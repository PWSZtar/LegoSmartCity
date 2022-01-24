#include "appcore.h"

AppCore::AppCore(QObject *parent) : QObject(parent)
{
    control.resize(16);
    control.fill(0);

    manager = new QNetworkAccessManager();
    connect(manager, &QNetworkAccessManager::finished, this, &AppCore::managerFinished);

    QTimer *timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, &AppCore::onRequest);
    timer->start(1000);

    onRequest();
}

void AppCore::managerFinished(QNetworkReply *reply)
{
    if (reply->error())
    {
        qDebug() << reply->errorString();
        if(reply->error() == QNetworkReply::ContentNotFoundError)
        {
            onSwitch(1,0,0);
            onRequest();
        }
        return;
    }
    answer = reply->readAll();

    QJsonDocument doc = QJsonDocument::fromJson(answer.toUtf8());
    if (doc.isObject())
    {
        QJsonObject obj  = doc.object();
        QJsonObject::iterator it;

        for(it=obj.begin() ; it!=obj.end(); it++)
        {
            if(it.value().isArray())
            {
                QJsonArray jArray = it.value().toArray();
                int n=0;

                foreach (const QJsonValue & v, jArray)
                    control[n++]=v.toObject().value("value").toInt();

                emit isDataChanged();
                qDebug()<<control;
            }
        }
    }
}

void AppCore::onRequest()
{

    QString requeststring=REQURL;
    request.setUrl(QUrl(requeststring));
    manager->get(request);
}

void AppCore::onCreate(int v)
{
    QByteArray jsonString = "{\"control\": [";
    for(int i=0 ; i<control.size() ; i++)
    {
        jsonString+="{\"id\": "+QString("%1").arg(i+1).toLatin1()+", \"value\": "+QString("%1").arg(v*0xFFFF).toLatin1()+"}";

        if(i < (control.size()-1))
            jsonString+=", ";
    }
    jsonString+="]}";

    QByteArray postDataSize = QByteArray::number(jsonString.size());
    QUrl serviceURL(SRVURL);
    QNetworkRequest request(serviceURL);
    request.setRawHeader("Content-Type", "application/json");
    request.setRawHeader("Content-Length", postDataSize);
    manager->post(request, jsonString);
}

void AppCore::onSwitch(int n, int v, bool s)
{
    qDebug() <<n << v;
    s ? SET_BIT(control[n], v) : CLR_BIT(control[n], v);

    QByteArray jsonString = "{\"control\": [";
    for(int i=0;i<control.size();i++) {
        jsonString+="{\"id\": "+QString("%1").arg(i+1).toLatin1()+", \"value\": "+QString("%1").arg(control[i]).toLatin1()+"}";

        if(i < (control.size()-1))
            jsonString+=", ";
    }
    jsonString+="]}";

    QByteArray postDataSize = QByteArray::number(jsonString.size());
    QUrl serviceURL(SRVURL);
    QNetworkRequest request(serviceURL);
    request.setRawHeader("Content-Type", "application/json");
    request.setRawHeader("Content-Length", postDataSize);
    manager->post(request, jsonString);
}

int AppCore::getValue(int n)
{
    return control[n];
}



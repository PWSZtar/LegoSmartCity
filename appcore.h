#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QHttpPart>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonParseError>
#include <QTimer>
#include <QtDebug>

#define GET_BIT(k, n) (k &   (1 << (n)))
#define SET_BIT(k, n) (k |=  (1 << (n)))
#define CLR_BIT(k, n) (k &= ~(1 << (n)))

#define SRVURL "http://danielkrol.pwsztar.edu.pl/iot/smartcity/"
#define REQURL "http://danielkrol.pwsztar.edu.pl/iot/smartcity/control.json"

class AppCore : public QObject
{
    Q_OBJECT
public:
    explicit AppCore(QObject *parent = nullptr);

private:
    void managerFinished(QNetworkReply *reply);

    QNetworkAccessManager *manager;
    QNetworkRequest request;

    QString answer;
    QVector<uint16_t> control;

public slots:
    void onRequest();
    void onCreate(int);
    void onSwitch(int, int, bool);
    int getValue(int);

signals:
    void isDataChanged();
};

#endif // APPCORE_H

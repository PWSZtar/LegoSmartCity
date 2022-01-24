import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    header: Label {
        text: qsTr("Dom")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: frame1.top

        source: "images/9.png"
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 0
        autoTransform: false
        fillMode: Image.PreserveAspectFit
    }

    Frame {
        id: frame1
        y: 470
        height: 60
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.leftMargin: 20

        Row {
            id: row
            anchors.fill: parent
            spacing: 5

            Button {
                id: button1
                width: 100
                height: 40
                text: qsTr("L1")
                checkable: true
            }

            Button {
                id: button2
                width: 100
                height: 40
                text: qsTr("L2")
                checkable: true
            }

            Button {
                id: button3
                width: 100
                height: 40
                text: qsTr("L3")
                checkable: true
            }
        }
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

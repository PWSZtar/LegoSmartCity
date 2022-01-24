import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600
    property alias button5: button5
    property alias button4: button4
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    header: Label {
        text: qsTr("Kino ")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: frame2.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        source: "images/4.png"
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 0
        autoTransform: false
        fillMode: Image.PreserveAspectFit
    }

    Frame {
        id: frame2
        x: 653
        width: 125
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 0

        Column {
            id: column
            anchors.fill: parent

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

            Button {
                id: button4
                width: 100
                height: 40
                text: qsTr("L4")
                checkable: true
            }

            Button {
                id: button5
                width: 100
                height: 40
                text: qsTr("L5")
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

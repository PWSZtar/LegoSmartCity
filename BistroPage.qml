import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600
    property alias button9: button9
    property alias button8: button8
    property alias button7: button7
    property alias button6: button6
    property alias button5: button5
    property alias button4: button4
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    header: Label {
        text: qsTr("Bistro")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: frame2.left
        anchors.top: parent.top
        anchors.bottom: frame1.top

        source: "images/8.png"
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
        anchors.right: frame2.left
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

            Button {
                id: button6
                width: 100
                height: 40
                text: qsTr("L6")
                checkable: true
            }

            Button {
                id: button7
                width: 100
                height: 40
                text: qsTr("L7")
                checkable: true
            }

            Button {
                id: button8
                width: 100
                height: 40
                text: qsTr("L8")
                checkable: true
            }

            Button {
                id: button9
                width: 100
                height: 40
                text: qsTr("L9")
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

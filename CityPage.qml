import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600
    property alias button13: button13
    property alias button12: button12
    property alias button11: button11
    property alias button10: button10
    property alias button9: button9
    property alias button8: button8
    property alias button7: button7
    property alias button6: button6
    property alias button5: button5
    property alias button3: button3
    property alias button4: button4
    property alias button2: button2
    property alias button1: button1

    header: Label {
        text: qsTr("Miasto")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Frame {
        id: frame1
        height: 60
        anchors.left: parent.left
        anchors.right: frame2.left
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.rightMargin: 20
        anchors.leftMargin: 20

        Row {
            id: row
            anchors.fill: parent
            spacing: 5

            Button {
                id: button1
                width: 100
                height: 40
                text: qsTr("OFF")
                checkable: false
            }

            Button {
                id: button2
                width: 100
                height: 40
                text: qsTr("ON")
                checkable: false
            }

            ToolSeparator {
                id: toolSeparator
            }

            Button {
                id: button3
                width: 100
                height: 40
                text: qsTr("Turbina")
                checkable: true
            }

            Button {
                id: button4
                width: 100
                height: 40
                text: qsTr("Ulica")
                checkable: true
            }

        }
    }

    Frame {
        id: frame2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.rightMargin: 20
        Column {
            id: col1
            anchors.fill: parent
            spacing: 5

            Button {
                id: button5
                width: 100
                height: 40
                text: qsTr("L1")
                checkable: true
            }

            Button {
                id: button6
                width: 100
                height: 40
                text: qsTr("L2")
                checkable: true
            }

            Button {
                id: button7
                width: 100
                height: 40
                text: qsTr("L3")
                checkable: true
            }

            Button {
                id: button8
                width: 100
                height: 40
                text: qsTr("L4")
                checkable: true
            }

            Button {
                id: button9
                width: 100
                height: 40
                text: qsTr("L5")
                checkable: true
            }

            Button {
                id: button10
                width: 100
                height: 40
                text: qsTr("L6")
                checkable: true
            }

            Button {
                id: button11
                width: 100
                height: 40
                text: qsTr("L7")
                checkable: true
            }

            Button {
                id: button12
                width: 100
                height: 40
                text: qsTr("L8")
                checkable: true
            }

            Button {
                id: button13
                width: 100
                height: 40
                text: qsTr("L9")
                checkable: true
            }
        }
        anchors.topMargin: 20
    }

    Image {
        id: image
        y: 252
        width: 100
        height: 100
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        source: "images/ki.jpg"
        anchors.bottomMargin: 20
        anchors.leftMargin: 20
        fillMode: Image.PreserveAspectFit
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:9}D{i:20}
}
##^##*/

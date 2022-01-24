import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600

    property alias button23: button23
    property alias button22: button22
    property alias button21: button21
    property alias button20: button20
    property alias button19: button19
    property alias button18: button18
    property alias button17: button17
    property alias button16: button16
    property alias button15: button15
    property alias button14: button14
    property alias button13: button13
    property alias button12: button12
    property alias button11: button11
    property alias button10: button10
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
        text: qsTr("Plac zgromadzeń")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        anchors.left: frame3.right
        anchors.right: frame2.right
        anchors.top: parent.top
        anchors.bottom: frame1.top

        source: "images/2.png"
        anchors.leftMargin: 20
        anchors.rightMargin: 145
        anchors.bottomMargin: 20
        anchors.topMargin: 0
        autoTransform: false
        fillMode: Image.PreserveAspectFit
    }

    Frame {
        id: frame1
        y: 469
        height: 60
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.leftMargin: 20

        Row {
            id: row
            anchors.centerIn: parent
            spacing: 2

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

            Button {
                id: button6
                width: 90
                height: 40
                text: qsTr("L6")
                checkable: true
            }

            Button {
                id: button7
                width: 90
                height: 40
                text: qsTr("L7")
                checkable: true
            }
        }
    }

    Frame {
        id: frame2
        x: 655
        width: 125
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: frame1.top
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 0

        Column {
            id: column
            anchors.fill: parent
            spacing: 2

            Button {
                id: button8
                width: 100
                height: 40
                text: qsTr("L8")
                anchors.horizontalCenter: parent.horizontalCenter
                checkable: true
            }

            Button {
                id: button9
                width: 100
                height: 40
                text: qsTr("L9")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button10
                width: 100
                height: 40
                text: qsTr("L10")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button11
                width: 100
                height: 40
                text: qsTr("L11")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button12
                width: 100
                height: 40
                text: qsTr("L12")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button13
                width: 100
                height: 40
                text: qsTr("L13")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button14
                width: 100
                height: 40
                text: qsTr("L14")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button15
                width: 100
                height: 40
                text: qsTr("L15")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button16
                width: 100
                height: 40
                text: qsTr("L16")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Frame {
        id: frame3
        width: 125
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: frame1.top
        anchors.leftMargin: 20
        Column {
            id: column1
            anchors.fill: parent
            spacing: 2


            Button {
                id: button17
                width: 100
                height: 40
                text: qsTr("L17")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button18
                width: 100
                height: 40
                text: qsTr("l18")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button19
                width: 100
                height: 40
                text: qsTr("L19")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button20
                width: 100
                height: 40
                text: qsTr("L20")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button21
                width: 100
                height: 40
                text: qsTr("L21")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button22
                width: 100
                height: 40
                text: qsTr("L22")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button23
                width: 100
                height: 40
                text: qsTr("L23")
                checkable: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        anchors.bottomMargin: 20
        anchors.topMargin: 0
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:11}D{i:21}D{i:22}D{i:23}
}
##^##*/

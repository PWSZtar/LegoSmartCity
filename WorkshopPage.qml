import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600

    property alias sceneZeroFloor: sceneZeroFloor
    property alias sceneFirstFloor: sceneFirstFloor
    property alias sceneSecondFloorB: sceneZeroFloor
    property alias sceneThridFloor: sceneFirstFloor

    property var bitsZeroFloor: [8, 14, 12, 13, 1, 2] // L1, L2, L3, L4, L8, L9
    property var bitsFirstFloor: [10, 4]    // L6, L10
    property var bitsSecondFloor: [0, 6] // L7, L11
    property var bitsThridFloor: [9]   // L5

    header: Label {
        text: qsTr("Warsztat")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

//    Image {
//        id: image
//        anchors.left: parent.left
//        anchors.right: frame2.left
//        anchors.top: parent.top
//        anchors.bottom: frame1.top

//        source: "images/5.png"
//        anchors.leftMargin: 20
//        anchors.rightMargin: 20
//        anchors.bottomMargin: 20
//        anchors.topMargin: 0
//        autoTransform: false
//        fillMode: Image.PreserveAspectFit
//    }

//    Frame {
//        id: frame1
//        y: 470
//        height: 60
//        anchors.left: parent.left
//        anchors.right: frame2.left
//        anchors.bottom: parent.bottom
//        anchors.rightMargin: 20
//        anchors.bottomMargin: 20
//        anchors.leftMargin: 20

//        Row {
//            id: row
//            anchors.fill: parent
//            spacing: 5

//            Button {
//                id: button1
//                width: 100
//                height: 40
//                text: qsTr("L1")
//                checkable: true
//            }

//            Button {
//                id: button2
//                width: 100
//                height: 40
//                text: qsTr("L2")
//                checkable: true
//            }

//            Button {
//                id: button3
//                width: 100
//                height: 40
//                text: qsTr("L3")
//                checkable: true
//            }

//            Button {
//                id: button4
//                width: 100
//                height: 40
//                text: qsTr("L4")
//                checkable: true
//            }
//        }
//    }

    Frame {
        id: framePicture
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        SwipeView{
            id: floors_swipeview
            anchors.fill: parent
            orientation: Qt.Vertical
            currentIndex: 1

            Item {
                id: thirdFloorItem
                WorkshopSceneThirdFloor{
                    id: sceneThirdFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/3500
                }
            }

            Item {
                id: secondFloorItemB
                WorkshopSceneSecondFloorB{
                    id: sceneSecondFloorB
                    anchors.centerIn: parent
                    scale: framePicture.width/3500
                }
            }
            Item {
                id: firstFloorItem
                WorkshopSceneFirstFloor{
                    id: sceneFirstFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/3500
                }
            }

            Item {
                id: zeroFloorItem
                WorkshopSceneZeroFloor{
                    id: sceneZeroFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/3500
                }
            }
        /*Column {
            id: column
            anchors.fill: parent

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
                text: qsTr("l7")
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

            Button {
                id: button10
                width: 100
                height: 40
                text: qsTr("L10")
                checkable: true
            }

            Button {
                id: button11
                width: 100
                height: 40
                text: qsTr("L11")
                checkable: true
            }*/
        }
    }
}

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

    property var bitsZeroFloor: [8, 8, 14, 12, 13, 1, 2] // L1, L2, L3, L4, L8, L9
    property var bitsFirstFloor: [10, 4]    // L6, L10
    property var bitsSecondFloor: [0, 6] // L7, L11
    property var bitsThridFloor: [9]   // L5

    header: Label {
        text: qsTr("Warsztat")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

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
        }
    }
}

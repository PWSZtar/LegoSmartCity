import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600

    property alias sceneZeroFloor: sceneZeroFloor
    property alias sceneFirstFloor: sceneFirstFloor

    property var bitsZeroFloor: [8, 8, 9]
    property var bitsFirstFloor: [13, 12, 14]

    header: Label {
        text: qsTr("Bank")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Frame{
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
                id: firstFloorItem

                BankSceneFirstFloor{
                    id: sceneFirstFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/2000
                }
            }

            Item {
                id: zeroFloorItem

                BankSceneZeroFloor{
                    id: sceneZeroFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/2000
                }
            }
        }
    }
}

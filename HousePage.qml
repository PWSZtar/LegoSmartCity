import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: page
    width: 800
    height: 600

    property alias sceneZeroFloor: sceneZeroFloor
    property var bitsZeroFloor: [0, 1, 2]

    header: Label {
        text: qsTr("Dom")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

//    Image {
//        id: image
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.bottom: frame1.top

//        source: "images/house.png"
//        anchors.leftMargin: 20
//        anchors.rightMargin: 20
//        anchors.bottomMargin: 20
//        anchors.topMargin: 0
//        autoTransform: false
//        fillMode: Image.PreserveAspectFit
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

        SwipeView {
            id: floors_swipeview
            anchors.fill: parent
            orientation: Qt.Vertical
            currentIndex: 1

            Item {
                id: zeroFloorItem

                HouseSceneZerotFloor{
                    id: sceneZeroFloor
                    anchors.centerIn: parent
                    scale: framePicture.width/1000
                }
            }
        }
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

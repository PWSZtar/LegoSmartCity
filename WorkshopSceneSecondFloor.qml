import QtQuick 2.12
import QtQml 2.2

Item {
    id: root
    width: 1737
    height: 977
    property bool bulbswitch: false
    property int currentIndex: 0

    property var bulbs : [
        { on: false, x: 750, y:  600 }, // L7, 2 piętro
        { on: false, x: 680, y: 450 }, // L11, 2 piętro
    ];

    MouseArea {
        anchors.fill: parent

        onClicked: {
            for (var i = 0; i < bulbs.length; i++) {
                if((getDistance(mouseX, mouseY, bulbs[i].x, bulbs[i].y)<32)) {
                    bulbs[i].on = !bulbs[i].on
                    canvas.requestPaint()
                    currentIndex = i
                    bulbswitch=!bulbswitch
                }
            }
        }
    }

    Canvas {
        id: canvas
        anchors.fill: parent
        onImageLoaded: requestPaint()

        onPaint: {
            var ctx = getContext("2d")
            ctx.reset()
            ctx.beginPath()

            ctx.drawImage("images/corner_garage/CornerGarage2.png", 0, 0)
            for (var i = 0; i < bulbs.length; i++) {
                ctx.drawImage(bulbs[i].on  ? "images/bulbs/bulbOn.png" : "images/bulbs/bulbOff.png",  bulbs[i].x,  bulbs[i].y)
            }
        }
    }

    function lightSwitch(bulb, state) {
        bulbs[bulb].on=state
        canvas.requestPaint()
    }

    function getDistance(mx, my, px, py){
        px+=32
        py+=32
        return (Math.sqrt((mx-px)*(mx-px)+(my-py)*(my-py)))
    }

    function bulbState(bulb) {
        return bulbs[bulb].on
    }
}

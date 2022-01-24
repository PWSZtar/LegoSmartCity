import QtQuick 2.12
import QtQml 2.2

Item {
    id: root
    width: 1264
    height: 1551
    property bool bulbswitch: false
    property int currentIndex: 0

    property var bulbs : [        
        { on: false, x: 895, y: 1030 }, // drzwi garażowe 1
        { on: false, x: 1080, y: 1030 },// drzwi garażowe 2
        { on: false, x: 260, y: 160 },  // L1 wej. front
        { on: false, x: 200, y: 1000 }, // L3 dystrybutor
        { on: false, x: 890, y: 100 },  // L4 wej. tylne
        { on: false, x: 950, y: 520 },  // L8 wew. war.
        { on: false, x: 950, y: 730 },  // L9 wew. war.
    ];

    MouseArea {
        anchors.fill: parent

        onClicked: {
            for (var i = 0; i < bulbs.length; i++) {
                if((getDistance(mouseX, mouseY, bulbs[i].x, bulbs[i].y)<32)) {
                    if(i < 2){
                        bulbs[0].on = !bulbs[0].on
                        bulbs[1].on = !bulbs[1].on
                    }else{
                        bulbs[i].on = !bulbs[i].on
                    }
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

            ctx.drawImage("images/corner_garage/CornerGarage0.png", 0, 0)
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

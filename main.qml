import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 800
    minimumWidth: 700
    height: 600
    minimumHeight: 400
    visible: true
    title: qsTr("LegoSmartCity Controller")

    property int data0: 0
    property int data1: 0
    property int data2: 0
    property int data3: 0
    property int data4: 0
    property int data5: 0
    property int data6: 0
    property int data7: 0
    property int data8: 0
    property int data9: 0
    property int data10: 0
    property int data11: 0

    SwipeView
    {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        BankPage
        {
            id: bankPage

            sceneZeroFloor.onBulbswitchChanged: appcore.onSwitch(0,  bitsZeroFloor[sceneZeroFloor.currentIndex], sceneZeroFloor.bulbState(sceneZeroFloor.currentIndex))
            sceneFirstFloor.onBulbswitchChanged: appcore.onSwitch(0,  bitsFirstFloor[sceneFirstFloor.currentIndex], sceneFirstFloor.bulbState(sceneFirstFloor.currentIndex))
        }

        SquarePage
        {
            id: squarePage

            button1.checked:  data1 & (1 <<  7)
            button2.checked:  data1 & (1 <<  10)
            button3.checked:  data1 & (1 <<  2)
            button4.checked:  data2 & (1 <<  1)
            button5.checked:  data1 & (1 <<  4)
            button6.checked:  data2 & (1 <<  10)
            button7.checked:  data1 & (1 <<  13)
            button8.checked:  data1 & (1 <<  0)
            button9.checked:  data1 & (1 <<  1)
            button10.checked: data1 & (1 << 11)
            button11.checked: data1 & (1 << 12)
            button12.checked: data1 & (1 <<  6)
            button13.checked: data1 & (1 << 14)
            button14.checked: data1 & (1 << 15)
            button15.checked: data2 & (1 <<  0)
            button16.checked: data1 & (1 <<  3)
            button17.checked: data2 & (1 <<  2)
            button18.checked: data2 & (1 <<  8)
            button19.checked: data2 & (1 <<  9)
            button20.checked: data1 & (1 <<  5)
            button21.checked: data2 & (1 << 12)
            button22.checked: data2 & (1 << 13)
            button23.checked: data2 & (1 << 14)

            button1.onClicked:  appcore.onSwitch(1,  7, button1.checked)
            button2.onClicked:  appcore.onSwitch(1, 10, button2.checked)
            button3.onClicked:  appcore.onSwitch(1,  2, button3.checked)
            button4.onClicked:  appcore.onSwitch(2,  1, button4.checked)
            button5.onClicked:  appcore.onSwitch(1,  4, button5.checked)
            button6.onClicked:  appcore.onSwitch(2, 10, button6.checked)
            button7.onClicked:  appcore.onSwitch(1, 13, button7.checked)
            button8.onClicked:  appcore.onSwitch(1,  0, button8.checked)
            button9.onClicked:  appcore.onSwitch(1,  1, button9.checked)
            button10.onClicked: appcore.onSwitch(1, 11, button10.checked)
            button11.onClicked: appcore.onSwitch(1, 12, button11.checked)
            button12.onClicked: appcore.onSwitch(1,  6, button12.checked)
            button13.onClicked: appcore.onSwitch(1, 14, button13.checked)
            button14.onClicked: appcore.onSwitch(1, 15, button14.checked)
            button15.onClicked: appcore.onSwitch(2,  0, button15.checked)
            button16.onClicked: appcore.onSwitch(1,  3, button16.checked)
            button17.onClicked: appcore.onSwitch(2,  2, button17.checked)
            button18.onClicked: appcore.onSwitch(2,  8, button18.checked)
            button19.onClicked: appcore.onSwitch(2,  9, button19.checked)
            button20.onClicked: appcore.onSwitch(1,  5, button20.checked)
            button21.onClicked: appcore.onSwitch(2, 12, button21.checked)
            button22.onClicked: appcore.onSwitch(2, 13, button22.checked)
            button23.onClicked: appcore.onSwitch(2, 14, button23.checked)
        }

        RestaurantPage
        {
            id: restaurantPage

            button1.checked:  data3 & (1 <<  0)
            button2.checked:  data3 & (1 <<  1)
            button3.checked:  data3 & (1 <<  3)
            button4.checked:  data3 & (1 <<  8)
            button5.checked:  data3 & (1 <<  9)
            button6.checked:  data3 & (1 << 10)
            button7.checked:  data3 & (1 << 12)
            button8.checked:  data3 & (1 << 13)
            button9.checked:  data3 & (1 << 14)

            button1.onClicked:  appcore.onSwitch(3,  0, button1.checked)
            button2.onClicked:  appcore.onSwitch(3,  1, button2.checked)
            button3.onClicked:  appcore.onSwitch(3,  3, button3.checked)
            button4.onClicked:  appcore.onSwitch(3,  8, button4.checked)
            button5.onClicked:  appcore.onSwitch(3,  9, button5.checked)
            button6.onClicked:  appcore.onSwitch(3, 10, button6.checked)
            button7.onClicked:  appcore.onSwitch(3, 12, button7.checked)
            button8.onClicked:  appcore.onSwitch(3, 13, button8.checked)
            button9.onClicked:  appcore.onSwitch(3, 14, button9.checked)

        }

        CinemaPage
        {
            id: cinemaPage

            button1.checked:  data4 & (1 << 15)
            button2.checked:  data4 & (1 << 10)
            button3.checked:  data4 & (1 << 11)
            button4.checked:  data4 & (1 << 13)
            button5.checked:  data4 & (1 <<  8)

            button1.onClicked:  appcore.onSwitch(4, 15, button1.checked)
            button2.onClicked:  appcore.onSwitch(4, 10, button2.checked)
            button3.onClicked:  appcore.onSwitch(4, 11, button3.checked)
            button4.onClicked:  appcore.onSwitch(4, 13, button4.checked)
            button5.onClicked:  appcore.onSwitch(4,  8, button5.checked)
        }

        WorkshopPage
        {
            id: workshopPage
            sceneZeroFloor.onBulbswitchChanged: appcore.onSwitch(5,  bitsZeroFloor[sceneZeroFloor.currentIndex], sceneZeroFloor.bulbState(sceneZeroFloor.currentIndex))
            sceneFirstFloor.onBulbswitchChanged: appcore.onSwitch(5,  bitsFirstFloor[sceneFirstFloor.currentIndex], sceneFirstFloor.bulbState(sceneFirstFloor.currentIndex))
            sceneSecondFloor.onBulbswitchChanged: appcore.onSwitch(5,  bitsSecondFloor[sceneSecondFloor.currentIndex], sceneSecondFloor.bulbState(sceneSecondFloor.currentIndex))
            sceneThirdFloor.onBulbswitchChanged: appcore.onSwitch(5,  bitsThirdFloor[sceneThirdFloor.currentIndex], sceneThirdFloor.bulbState(sceneThirdFloor.currentIndex))
//            button1.checked:  data5 & (1 <<  8)
//            button2.checked:  data5 & (1 << 14)
//            button3.checked:  data5 & (1 << 12)
//            button4.checked:  data5 & (1 << 13)
//            button5.checked:  data5 & (1 <<  9)
//            button6.checked:  data5 & (1 << 10)
//            button7.checked:  data5 & (1 <<  0)
//            button8.checked:  data5 & (1 <<  1)
//            button9.checked:  data5 & (1 <<  2)
//            button10.checked: data5 & (1 <<  4)
//            button11.checked: data5 & (1 <<  6)
        }

        PetshopPage
        {
            id: petshopPage

            button1.checked:  data6 & (1 << 14)
            button2.checked:  data6 & (1 << 15)
            button3.checked:  data6 & (1 <<  0)
            button4.checked:  data6 & (1 <<  1)
            button5.checked:  data6 & (1 <<  8)
            button6.checked:  data6 & (1 <<  9)
            button7.checked:  data6 & (1 << 12)
            button8.checked:  data6 & (1 << 14)

            button1.onClicked:  appcore.onSwitch(6, 14, button1.checked)
            button2.onClicked:  appcore.onSwitch(6, 15, button2.checked)
            button3.onClicked:  appcore.onSwitch(6,  0, button3.checked)
            button4.onClicked:  appcore.onSwitch(6,  1, button4.checked)
            button5.onClicked:  appcore.onSwitch(6,  8, button5.checked)
            button6.onClicked:  appcore.onSwitch(6,  9, button6.checked)
            button7.onClicked:  appcore.onSwitch(6, 12, button7.checked)
            button8.onClicked:  appcore.onSwitch(6, 14, button8.checked)
        }

        DetectiveOfficePage
        {
            id: detectiveOfficePage

            button1.checked:  data7 & (1 <<  1)
            button2.checked:  data7 & (1 <<  4)
            button3.checked:  data7 & (1 <<  5)
            button4.checked:  data7 & (1 <<  0)
            button5.checked:  data7 & (1 <<  2)
            button6.checked:  data7 & (1 <<  8)
            button7.checked:  data7 & (1 <<  9)
            button8.checked:  data7 & (1 << 10)
            button9.checked:  data7 & (1 << 12)
            button10.checked: data7 & (1 << 13)

            button1.onClicked:  appcore.onSwitch(7,  1, button1.checked)
            button2.onClicked:  appcore.onSwitch(7,  4, button2.checked)
            button3.onClicked:  appcore.onSwitch(7,  5, button3.checked)
            button4.onClicked:  appcore.onSwitch(7,  0, button4.checked)
            button5.onClicked:  appcore.onSwitch(7,  2, button5.checked)
            button6.onClicked:  appcore.onSwitch(7,  8, button6.checked)
            button7.onClicked:  appcore.onSwitch(7,  9, button7.checked)
            button8.onClicked:  appcore.onSwitch(7, 10, button8.checked)
            button9.onClicked:  appcore.onSwitch(7, 12, button9.checked)
            button10.onClicked: appcore.onSwitch(7, 13, button10.checked)
        }

        BistroPage
        {
            id: bistroPage

            button1.checked:  data8 & (1 << 13)
            button2.checked:  data8 & (1 <<  1)
            button3.checked:  data8 & (1 << 14)
            button4.checked:  data8 & (1 <<  8)
            button5.checked:  data8 & (1 << 10)
            button6.checked:  data8 & (1 <<  0)
            button7.checked:  data8 & (1 <<  3)
            button8.checked:  data8 & (1 <<  4)
            button9.checked:  data8 & (1 << 12)

            button1.onClicked:  appcore.onSwitch(8, 13, button1.checked)
            button2.onClicked:  appcore.onSwitch(8,  1, button2.checked)
            button3.onClicked:  appcore.onSwitch(8, 14, button3.checked)
            button4.onClicked:  appcore.onSwitch(8,  8, button4.checked)
            button5.onClicked:  appcore.onSwitch(8, 10, button5.checked)
            button6.onClicked:  appcore.onSwitch(8,  0, button6.checked)
            button7.onClicked:  appcore.onSwitch(8,  3, button7.checked)
            button8.onClicked:  appcore.onSwitch(8,  4, button8.checked)
            button9.onClicked:  appcore.onSwitch(8, 12, button9.checked)
        }

        HousePage
        {
            id: housePage

            sceneZeroFloor.onBulbswitchChanged: appcore.onSwitch(9,  bitsZeroFloor[sceneZeroFloor.currentIndex], sceneZeroFloor.bulbState(sceneZeroFloor.currentIndex))


//            button1.checked:  data9 & (1 << 2)
//            button2.checked:  data9 & (1 << 1)
//            button3.checked:  data9 & (1 << 0)

//            button1.onClicked:  appcore.onSwitch(9, 2, button1.checked)
//            button2.onClicked:  appcore.onSwitch(9, 1, button2.checked)
//            button3.onClicked:  appcore.onSwitch(9, 0, button3.checked)
        }

        CafeteriaPage
        {
            id: cafeteriaPage

            button1.checked:  data9 & (1 << 6)
            button2.checked:  data9 & (1 << 5)
            button3.checked:  data9 & (1 << 4)

            button1.onClicked:  appcore.onSwitch(9, 6, button1.checked)
            button2.onClicked:  appcore.onSwitch(9, 5, button2.checked)
            button3.onClicked:  appcore.onSwitch(9, 4, button3.checked)
        }

        Station1Page
        {
            id: station1Page

            button1.checked:  data6 & (1 << 6)
            button2.checked:  data6 & (1 << 5)
            button3.checked:  data6 & (1 << 3)
            button4.checked:  data6 & (1 << 4)

            button1.onClicked:  appcore.onSwitch(6, 6, button1.checked)
            button2.onClicked:  appcore.onSwitch(6, 5, button2.checked)
            button3.onClicked:  appcore.onSwitch(6, 3, button3.checked)
            button4.onClicked:  appcore.onSwitch(6, 4, button4.checked)
        }

        Station2Page
        {
            id: station2Page

            button1.checked:  data9 & (1 <<  9)
            button2.checked:  data9 & (1 << 10)
            button3.checked:  data9 & (1 <<  8)
            button4.checked:  data9 & (1 << 14)
            button5.checked:  data9 & (1 << 13)
            button6.checked:  data9 & (1 << 12)

            button1.onClicked:  appcore.onSwitch(9,  9, button1.checked)
            button2.onClicked:  appcore.onSwitch(9, 10, button2.checked)
            button3.onClicked:  appcore.onSwitch(9,  8, button3.checked)
            button4.onClicked:  appcore.onSwitch(9, 14, button4.checked)
            button5.onClicked:  appcore.onSwitch(9, 13, button5.checked)
            button6.onClicked:  appcore.onSwitch(9, 12, button6.checked)
        }

        RollercoasterPage
        {
            id: rollercoasterPage

            button1.checked:  data10 & (1 <<  0)
            button2.checked:  data10 & (1 <<  1)
            button3.checked:  data10 & (1 <<  2)
            button4.checked:  data10 & (1 << 11)
            button5.checked:  data10 & (1 << 15)
            button6.checked:  data10 & (1 << 14)

            button1.onClicked:  appcore.onSwitch(10,  0, button1.checked)
            button2.onClicked:  appcore.onSwitch(10,  1, button2.checked)
            button3.onClicked:  appcore.onSwitch(10,  2, button3.checked)
            button4.onClicked:  appcore.onSwitch(10, 11, button4.checked)
            button5.onClicked:  appcore.onSwitch(10, 15, button5.checked)
            button6.onClicked:  appcore.onSwitch(10, 14, button6.checked)

        }

        CityPage
        {
            id: cityPage

            button3.checked: !(data8 & (1 <<  7))
            button4.checked: data0 & (1 << 10)

            button5.checked:  data0 & (1 << 10)
            button6.checked:  data1 & (1 <<  8)
            button7.checked:  data1 & (1 <<  9)
            button8.checked:  data3 & (1 <<  4)
            button9.checked:  data4 & (1 << 14)
            button10.checked: data5 & (1 <<  5)
            button11.checked: data6 & (1 << 10)
            button12.checked: data7 & (1 << 14)
            button13.checked: data8 & (1 <<  9)

            button1.onClicked: appcore.onCreate(0);
            button2.onClicked: appcore.onCreate(1);
            button3.onClicked: appcore.onSwitch(8, 7, !button3.checked);
            button4.onClicked:
            {
                appcore.onSwitch(0, 10, button4.checked);
                appcore.onSwitch(1,  8, button4.checked);
                appcore.onSwitch(1,  9, button4.checked);
                appcore.onSwitch(3,  4, button4.checked);
                appcore.onSwitch(4, 14, button4.checked);
                appcore.onSwitch(5,  5, button4.checked);
                appcore.onSwitch(6, 10, button4.checked);
                appcore.onSwitch(7, 14, button4.checked);
                appcore.onSwitch(8,  9, button4.checked);
            }
            button5.onClicked:  appcore.onSwitch(0, 10, button5.checked);
            button6.onClicked:  appcore.onSwitch(1,  8, button6.checked);
            button7.onClicked:  appcore.onSwitch(1,  9, button7.checked);
            button8.onClicked:  appcore.onSwitch(3,  4, button8.checked);
            button9.onClicked:  appcore.onSwitch(4, 14, button9.checked);
            button10.onClicked: appcore.onSwitch(5,  5, button10.checked);
            button11.onClicked: appcore.onSwitch(6, 10, button11.checked);
            button12.onClicked: appcore.onSwitch(7, 14, button12.checked);
            button13.onClicked: appcore.onSwitch(8,  9, button13.checked);
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        Repeater{
            id: repeater_tabbar
            model: ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "D1", "D2", "RC", "MS"]

            TabButton {
                text: modelData
            }
        }
    }

    Connections {
        target: appcore
        function onIsDataChanged()
        {
            data0 = appcore.getValue(0)

            for(var i=0 ; i<3 ; i++){
                bankPage.sceneZeroFloor.lightSwitch(i, data0 & (1 << bankPage.bitsZeroFloor[i]))
                bankPage.sceneFirstFloor.lightSwitch(i, data0 & (1 << bankPage.bitsFirstFloor[i]))
            }

            data1 = appcore.getValue(1)
            data2 = appcore.getValue(2)
            data3 = appcore.getValue(3)
            data4 = appcore.getValue(4)

            data5 = appcore.getValue(5)
            for(var j=0 ; j<7 ; j++) {
                workshopPage.sceneZeroFloor.lightSwitch(j, data5 & (1 << workshopPage.bitsZeroFloor[j]))
            }
            workshopPage.sceneFirstFloor.lightSwitch(0, data5 & (1 << workshopPage.bitsFirstFloor[0]))
            workshopPage.sceneFirstFloor.lightSwitch(1, data5 & (1 << workshopPage.bitsFirstFloor[1]))
            workshopPage.sceneSecondFloor.lightSwitch(0, data5 & (1 << workshopPage.bitsSecondFloor[0]))
            workshopPage.sceneSecondFloor.lightSwitch(1, data5 & (1 << workshopPage.bitsSecondFloor[1]))
            workshopPage.sceneThirdFloor.lightSwitch(0, data5 & (1 << workshopPage.bitsThirdFloor[0]))

            data6 = appcore.getValue(6)
            data7 = appcore.getValue(7)
            data8 = appcore.getValue(8)
            data9 = appcore.getValue(9)
            for(var k=0 ; k<3 ; k++) {
                housePage.sceneZeroFloor.lightSwitch(k, data9 & (1 << housePage.bitsZeroFloor[k]))
            }
            data10 = appcore.getValue(10)
            data11 = appcore.getValue(11)
        }
    }
}

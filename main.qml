import QtQuick 2.15

import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import an.window 1.0
import Qt3D.Render 2.15
import QtQuick3D.Effects 1.15

FramelessWindow {
    id:master
    width: 640
    height: 480
    visible: true
    flags: Qt.FramelessWindowHint

    icon: "qrc:/image/JIA.png"

    Rectangle {
           anchors.fill: parent
           Image {
               id: backgroundImage
               source: "qrc:/image/bg2.png"  // Update with your image path
               anchors.fill: parent
               smooth: true
           }
       }

    Jia_framework{
        anchors.fill: parent
    }


    }


    // Rectangle{

    //     anchors.bottomMargin: 33
    //     anchors.topMargin: 70
    //     anchors.rightMargin: 30
    //     anchors.leftMargin: 30
    //     // color: "#800000FF" // 半透明的蓝色，格式为 #AARRGGBB，其中 AA 表示透明度
    // Column {
    //     anchors.fill: parent
    //     spacing: 20
    //     padding: 20

    //     Text {
    //         text: "Basic Controls"
    //         font.pointSize: 24
    //         font.bold: true
    //         horizontalAlignment: Text.AlignHCenter
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }

    //     Button {
    //         text: "Click Me"
    //         width: 200
    //         height: 40
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }

    //     TextField {
    //         placeholderText: "Enter text here"
    //         width: 200
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }

    //     CheckBox {
    //         text: "Check me"
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }

    //     Slider {
    //         width: 200
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }

    //     ComboBox {
    //         width: 200
    //         anchors.horizontalCenter: parent.horizontalCenter
    //         model: ["Option 1", "Option 2", "Option 3"]
    //     }

    //     Label {
    //         text: "Label text"
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }
    // }


    // }





import QtQuick 2.15
 import QtQuick.Controls 2.15

Rectangle{
    // width: parent.width
    property string button_text: ""
    color: "transparent"
    height: 50
Button{
    anchors.fill:parent
    height:50

    icon.source: "qrc:/image/navigate_next.png"
    text:button_text
    background: Rectangle {
                color: "transparent" // 背景透明
                border.color: "red" // 边框透明

                // border.color: "transparent" // 边框透明
            }

}}

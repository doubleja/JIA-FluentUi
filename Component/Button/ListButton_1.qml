import QtQuick 2.15
 import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Rectangle{
    id:listButton_1
    // width: parent.width
    property string button_text: ""
    //跟踪旋转状态
    property bool isrotated:false


    color: "transparent"
    height: 50
    // border.color: "red" // 边框透明
    border.color: "transparent" // 边框透明
    RowLayout{
        anchors.fill:parent
        anchors.margins: 4
    Image {
        id: _icon
        source: "qrc:/image/navigate_next.png"

        //Rotation旋转image
        transform: Rotation{
            id:iconRotation
            angle:0
            origin.x:_icon.width/2
            origin.y:_icon.height/2
        }
    }
    Text{
        id:_text
        font.pointSize:18
        font.family: "Futura"
        height:parent.height-4
        text:button_text
    }}

    MouseArea{
        id:mouseArea
        anchors.fill:parent

        cursorShape: Qt.PointingHandCursor // 鼠标悬停时显示手型光标
        //在 MouseArea 的 onClicked 事件中更新 iconRotation.angle 以旋转 Image。
        onClicked: {
            console.log("选择了",_text);
            if(isrotated){
                iconRotation.angle=0
            }else{
                iconRotation.angle = 90
            }

            isrotated = !isrotated
            rotationAnimation.start()
        }
        //悬浮效果
        onPressedChanged: {
                   if (pressed) {
                       var maxWidth = left_framework.width - 20 // Padding to account for border
                                      var maxHeight = parent.height * 1.1 // Slightly larger than 1.1 to avoid clipping

                                      var targetWidth = Math.min(maxWidth, listButton_1.width * 1.1)
                                      var targetHeight = Math.min(maxHeight, listButton_1.height * 1.1)

                                      scaleAnimation.to = targetWidth / listButton_1.width
                                      scaleAnimation.start()
                   } else {
                       parent.opacity = 1.0 // 恢复正常
                       // scaleAnimation.to = 1.0
                       scaleAnimation.stop()
                   }
               }

        //缩放点击效果 使用 Behavior 和 Scale 动画来在点击时实现缩放效果。点击时 Scale 动画会使按钮变大，释放时按钮恢复原状。

        }

        //旋转动画
        RotationAnimation{
            id:rotationAnimation
            target:_icon
            from: 90
            to:0
            duration: 300
            easing.type: Easing.InQuad
        }

        // // 缩放动画
           NumberAnimation {
               id: scaleAnimation
               target: parent
               property: "scale"
               from: 1.0
               to: 1.1
               duration: 100
           }
    }


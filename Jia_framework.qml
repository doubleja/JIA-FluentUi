import QtQuick 2.15
import QtQuick.Controls 2.0
 import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "./Component/Button"
Item {
    id:master
    // anchors.fill:parent
    property int imagebutton_WidthHeight1: 16
    property int imagebutton_WidthHeight2: 36
    ColumnLayout{
        anchors.fill: parent
        anchors.margins: 6
    RowLayout{
        height: 24
        anchors.margins: 6
        Image{
            height: imagebutton_WidthHeight1
            width: imagebutton_WidthHeight1
            source:"qrc:/image/users.png"
        }
        Image{
            height: imagebutton_WidthHeight1
            width: imagebutton_WidthHeight1
            source: "qrc:/image/user.png"
        }
        //弹簧组件
        Item{
            //使其填充 RowLayout 中剩余的空间。
            Layout.fillWidth: true
            // Rectangle{
            //     color: "transparent"
            //     width: 100
            //     height: 100
            //     border.color: "transparent"
            //     // border.width: 1
            //     // radius: 10
            // }

        }

        Button{
            flat:false
            height: imagebutton_WidthHeight1
            width: imagebutton_WidthHeight1
            background:Image{
             anchors.fill: parent
            source:"qrc:/image/small.png"
        }
            onClicked: console.log("点击")
        }

        Button{
            flat:false
            height: imagebutton_WidthHeight1
            width: imagebutton_WidthHeight1
            background:
        Image{
            anchors.fill: parent
            source: "qrc:/image/blank.png"
        }}

        Button{
            flat:false
            height: imagebutton_WidthHeight1
            width: imagebutton_WidthHeight1
            background:
        Image{
            anchors.fill:parent
            source:"qrc:/image/close.png"
        }}


    }

    RowLayout{

        anchors.margins: 6

        Rectangle{
            id:left_framework
            width: 200
            color:"transparent"
            height: parent.height
            //35透明度
            border.color:"#58FFFFFF"
            border.width: 1.5
            radius:10
            /*在 RowLayout 中，Layout.fillHeight: true 指定该子项应填充整个父项的高度。
            在 ColumnLayout 中，Layout.fillWidth: true 则指定子项应填充整个父项的宽度。*/
            Layout.fillHeight: true
            //DropShadow添加阴影
            layer.enabled: true
            layer.effect: DropShadow{
                horizontalOffset: 5
                verticalOffset: 5
                radius:10
                color: "#66000000"
                samples:19
            ColumnLayout{

                anchors.fill:parent

                ListButton_1 {
                         Layout.fillWidth: true

                         button_text:"基础控件"
                     }
                ListButton_1 {
                         Layout.fillWidth: true

                         button_text:"自定义控件"
                     }
                ListButton_1 {
                         Layout.fillWidth: true

                         button_text:"表格"
                     }
                ListButton_1 {
                         Layout.fillWidth: true

                         button_text:"图表"
                     }
                Item{
                     Layout.fillHeight: true
                }
            }

            }

            // ShaderEffect{
            //     anchors.fill:parent
            //     fragmentShader: "

            //         varying highp vec2 qt_TexCoord0;
            //         uniform lowp float qt_Opacity;
            //         void main() {
            //             gl_FragColor = vec4(1.0, 1.0, 1.0, 0.5) *               qt_Opacity;
            //         }
            // "
            // }
        }

        Item{
            Layout.fillWidth: true
        }

        Rectangle{
            id:right_framework
            color:"transparent"
            width: 400
            height: parent.height
            //35透明度
            border.color:"#58FFFFFF"
            border.width: 1.5
            radius:10
            Layout.fillWidth: true
            Layout.fillHeight: true
            //DropShadow添加阴影
            layer.enabled: true
            layer.effect: DropShadow{
                horizontalOffset: 5
                verticalOffset: 5
                radius:10
                color: "#66000000"
                samples:19
            }
            // ShaderEffect{
            //     anchors.fill:parent
            //     fragmentShader: "
            //         varying highp vec2 qt_TexCoord0;
            //         uniform lowp float qt_Opacity;
            //         void main() {
            //             gl_FragColor = vec4(1.0, 1.0, 1.0, 0.5) *               qt_Opacity;
            //         }
            // "
            // }

        }

    }
    }
}

import Quickshell
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: root

            required property var modelData
            screen: modelData

            readonly property string fontFamily: "JetBrainsMono Nerd Font"
            readonly property int fontSize: 16

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 30
            color: "black"

            RowLayout {
                anchors.fill: parent

                Item {
                    Layout.fillWidth: true
                }
                Text {
                    text: Time.time
                    font.family: fontFamily
                    font.pixelSize: fontSize
                    color: "white"
                }
                Item {
                    Layout.fillWidth: true
                }
                Audio {
                    fontFamily: root.fontFamily
                    fontSize: root.fontSize
                    textColor: "white"
                }
                Battery {
                    fontFamily: root.fontFamily
                    fontSize: root.fontSize
                    textColor: "white"
                }
            }
        }
    }
}

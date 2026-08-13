import QtQuick
import QtQuick.Layouts
import Quickshell.Services.UPower

RowLayout {
    required property string fontFamily
    required property int fontSize
    required property string textColor

    Text {
        text: UPower.displayDevice.percentage * 100 + "%"
        font.family: fontFamily
        font.pixelSize: fontSize
        color: textColor
    }
    Text {
        text: ""
        font.family: fontFamily
        font.pixelSize: fontSize + 6
        color: textColor
    }
}

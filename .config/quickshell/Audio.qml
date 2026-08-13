import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire

RowLayout {
    required property string fontFamily
    required property int fontSize
    required property string textColor

    property PwNode node: Pipewire.defaultAudioSink

    PwObjectTracker {
        objects: [ node ]
    }

    Text {
        text: (node.audio.volume * 100).toFixed(0) + "%"
        font.family: fontFamily
        font.pixelSize: fontSize
        color: textColor
    }

    Text {
        text: ""
        font.family: fontFamily
        font.pixelSize: fontSize
        color: textColor
    }
}

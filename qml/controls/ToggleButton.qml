import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnToggle
    // Custom properties
    property url btnIconSource: "../../images/svg_images/menu_icon.svg"
    property color btnColorDefault: "#1c1d20"
    property color btnColorMouseOver: "#23272e"
    property color btnColorClicked: "#00a1f1"

    QtObject {
        id: internal

        // Mouse over and Mouse clicked change color
        property var dynamicColor: if (btnToggle.down) {
                                       btnToggle.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnToggle.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 70
    implicitHeight: 60

    background: Rectangle {
        id: bgBtn
        color: internal.dynamicColor
    }

    Image {
        id: iconBtn
        source: btnIconSource
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        height: 25
        width: 25
        fillMode: Image.PreserveAspectFit
    }

    ColorOverlay {
        anchors.fill: iconBtn
        source: iconBtn
        color: "#ffffff"
        antialiasing: false
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}
}
##^##*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: customBtn

    // CUSTOM PROPERTIES
    property color colorDefault: "#55aaff"
    property color colorMouseOver: "#cccccc"
    property color colorPressed: "#333333"

    QtObject {
        id: internal

        property var dynamicColor: if(customBtn.down){
            customBtn.down ? colorPressed : colorDefault
        } else {
            customBtn.hovered ? colorMouseOver : colorDefault
        }
    }

    text: qsTr("Custom Btn")
    implicitWidth: 200
    implicitHeight: 40

    background: Rectangle {
        color: internal.dynamicColor
        radius: 5
    }

    contentItem: Item {
        Text {
            id: textBtn
            text: customBtn.text
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:2;height:40;width:200}
}
##^##*/

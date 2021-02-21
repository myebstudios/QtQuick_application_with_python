import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.14
import "controls"

Window {
    id: window
    title: "Custom Botton"
    width: 400; height: 400

    CustomBtn {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

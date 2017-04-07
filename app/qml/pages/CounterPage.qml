import QtQuick 2.0
import Sailfish.Silica 1.0
import counter.cpp.application.Core 1.0

Page {
    Counter {
        id: counter
    }
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        width: parent.width
        height: parent.height
        PullDownMenu {
            MenuItem {
                objectName: "resetItem"
                text: "reset"
                onClicked: counter.resetCount()
            }
        }
        Column {
            spacing: 10
            width: parent.width
            height: parent.height
            Text {
                objectName: "countText"
                width: parent.width
                text: value
                color: "#ffffff"
                font.pointSize: 96
                horizontalAlignment: Text.AlignHCenter
            }

            Button {
                objectName: "addButton"
                width: parent.width
                text: "add"
                onClicked: counter.incrementCount()
            }
        }
    }
}


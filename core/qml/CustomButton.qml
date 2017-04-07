import QtQuick 2.0

Rectangle {
    signal customButtonClicked(string newColor)

    id: rectangle
    width: 400; height: 100
    color: "red"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Component.onCompleted: mouseArea.clicked.connect(mouseAreaClickedHandler)

    function mouseAreaClickedHandler(mouse) {
        rectangle.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
        rectangle.customButtonClicked(color)
    }
}

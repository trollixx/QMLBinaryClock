import QtQuick 2.0

Item {
    id: root

    property color onColor: "orange"
    property color offColor: "grey"
    property int places: 2
    property int spacing: 5
    property int value: 0

    height: width * places + root.spacing * (places - 1)

    Column {
        anchors.fill: parent
        spacing: root.spacing

        Repeater {
            model: root.places

            Rectangle {
                color: (Math.pow(2, root.places - index - 1) & root.value) ? onColor : offColor
                radius: width / 2
                width: root.width; height: width
            }
        }
    }
}

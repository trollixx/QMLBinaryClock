import QtQuick 2.0

// Binary-coded Sexagesimal Clock

Rectangle {
    id: root

    property int circleSize: 50
    property var date: new Date()

    color: "lightyellow"

    Row {
        anchors.centerIn: parent
        spacing: 5
        width: circleSize * 3 + spacing * 2; height: 6 * circleSize + 25

        // Hours
        Digit {
            anchors.bottom: parent.bottom
            places: 5
            value: date.getHours()
            width: circleSize
        }

        // Minutes
        Digit {
            anchors.bottom: parent.bottom
            places: 6
            value: date.getMinutes()
            width: circleSize
        }

        // Seconds
        Digit {
            anchors.bottom: parent.bottom
            places: 6
            value: date.getSeconds()
            width: circleSize
        }
    }
}


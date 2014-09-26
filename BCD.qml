import QtQuick 2.0

// Binary-coded Decimal Clock

Rectangle {
    id: root

    property int circleSize: 50
    property var date: new Date()

    color: "lightyellow"

    Row {
        anchors.centerIn: parent
        spacing: 5
        width: circleSize * 6 + spacing * 5; height: 4 * circleSize + 15

        // Hours
        Digit {
            anchors.bottom: parent.bottom
            places: 2
            value: date.getHours() / 10
            width: circleSize
        }
        Digit {
            anchors.bottom: parent.bottom
            places: 4
            value: date.getHours() % 10
            width: circleSize
        }

        // Minutes
        Digit {
            anchors.bottom: parent.bottom
            places: 3
            value: date.getMinutes() / 10
            width: circleSize
        }
        Digit {
            anchors.bottom: parent.bottom
            places: 4
            value: date.getMinutes() % 10
            width: circleSize
        }

        // Seconds
        Digit {
            anchors.bottom: parent.bottom
            places: 3
            value: date.getSeconds() / 10
            width: circleSize
        }
        Digit {
            anchors.bottom: parent.bottom
            places: 4
            value: date.getSeconds() % 10
            width: circleSize
        }
    }
}

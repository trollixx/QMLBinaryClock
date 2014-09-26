import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

ApplicationWindow {
    color: "white"
    title: qsTr("Binary Clock")
    width: 720; height: 480

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    statusBar: StatusBar {
        Label {
            id: timeLabel
        }
    }

    RowLayout {
        anchors.fill: parent

        BCD {
            id: bcd

            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        BCS {
            id: bcs

            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }

    Timer {
        interval: 50
        repeat: true
        running: true

        onTriggered: {
            var date = new Date();
            timeLabel.text = date.toTimeString();
            bcd.date = date
            bcs.date = date
        }
    }
}

import QtQuick 2.0
import QtQuick.Controls 1.3

Component {
    id: component
    Item {
        id: item
        height: column.height + 20
        width: parent.parent.parent.width

        Rectangle {
            anchors.fill: parent
            color: "transparent"

            Rectangle {
                anchors.fill: parent
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                color: "transparent"

                Column {
                    id: column
                    width: parent.width

                    Row {
                        spacing: 10
                        Label {
                            text: feedTitle
                            font.pointSize: 12
                            textFormat: Text.PlainText
                            color: "gray"
                            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                            renderType: Text.NativeRendering
                        }
                        Label {
                            text: date.toLocaleString(Qt.locale(), Locale.ShortFormat)
                            font.pointSize: 12
                            textFormat: Text.PlainText
                            color: "gray"
                            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                            renderType: Text.NativeRendering
                        }
                    }
                    Label {
                        text: title
                        font.pointSize: 16
                        textFormat: Text.PlainText
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        renderType: Text.NativeRendering
                        width: parent.width
                    }
                    Label {
                        text: excerpt
                        font.pointSize: 12
                        textFormat: Text.PlainText
                        color: "gray"
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        renderType: Text.NativeRendering
                        width: parent.width
                    }
                }
            }

            Rectangle {
                anchors.top: parent.bottom
                width: parent.width
                height: 1
                color: "lightgray"
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.parent.parent.currentIndex = index
            }
        }
    }
}

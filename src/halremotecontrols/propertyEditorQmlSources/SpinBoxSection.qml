import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0


Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Spin Box")

        SectionLayout {
            Label {
                text: qsTr("Value")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.value
                    minimumValue: backendValues.minimumValue
                    maximumValue: backendValues.maximumValue
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Minimum value")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.minimumValue
                    minimumValue: -999999999999
                    maximumValue: backendValues.maximumValue
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Maximum value")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.maximumValue
                    minimumValue: backendValues.minimumValue
                    maximumValue: 999999999999
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Step size")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.stepSize
                    minimumValue: 0.01
                    maximumValue: 999999999999
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {

                text: qsTr("Focus on press")
                toolTip: "Determines whether the radio button gets focus if pressed."
            }

            SecondColumnLayout {
                CheckBox {
                    backendValue: backendValues.activeFocusOnPress
                    implicitWidth: 180
                }
                ExpandingSpacer {

                }
            }
        }
    }

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Text")

        SectionLayout {
            Label {
                text: qsTr("Decimals")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.decimals
                    minimumValue: 0
                    maximumValue: 10
                    decimals: 0
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Prefix")
            }

            SecondColumnLayout {
                LineEdit {
                    backendValue: backendValues.prefix
                    Layout.fillWidth: true
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Suffix")
            }

            SecondColumnLayout {
                LineEdit {
                    backendValue: backendValues.suffix
                    Layout.fillWidth: true
                }
                ExpandingSpacer {
                }
            }
        }
    }
}

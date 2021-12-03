import QtQuick 2.4
import Ubuntu.Components 1.3

Page {
    id: aboutPage

   // property string daemonVersion: ""

    header: PageHeader {
        title: i18n.tr("About")
        flickable: flickable
    }

    Flickable {
        id: flickable

        flickableDirection: Flickable.AutoFlickIfNeeded
        anchors.fill: parent
        contentHeight: dataColumn.height + units.gu(10) + dataColumn.anchors.topMargin

        Column {
            id: dataColumn

            spacing: units.gu(3)
            anchors {
                top: parent.top; left: parent.left; right: parent.right; topMargin: units.gu(5); rightMargin:units.gu(2.5); leftMargin: units.gu(2.5)
            }

            UbuntuShape {
                width: units.gu(20)
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                source: Image {
                   source: "../UBsync.png"
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        /* TODO: The share debug feature was here; any other hiddent feature could be activated in the future :-)*/
                    }
                }

            }

            Label {
                width: parent.width
                textSize: Label.XLarge
                font.weight: Font.DemiBold
                horizontalAlignment: Text.AlignHCenter
                text: "UBsync"
            }

            Column {
                width: parent.width

                Label {
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    // TRANSLATORS: Owncloud Sync version number e.g Version 0.1
                    text: i18n.tr("App Version %1").arg(Qt.application.version)
                }
                Label{
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    // TRANSLATORS: Nextcloudcmd binary version number e.g Version 1.8.1
                    text: i18n.tr("Client: %1").arg(owncloud.settings.owncloudcmdVersion)
                }
                Label {
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Maintained by %1").arg("Jan") + " " + i18n.tr("and by the %1").arg("<a href=\"https://github.com/belohoub/UBsync\">UBsync team</a>")
                }

                Label {
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    text: " "
                }
                 Label {
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    text: i18n.tr("Please report bugs to the %1").arg("<a href=\"https://github.com/belohoub/UBsync/issues\">issue tracker</a>")
                    onLinkActivated: Qt.openUrlExternally(link)
                 }
            }

            Column {
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: units.gu(2)
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.weight: Font.DemiBold
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Thanks to")
                }

                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Owncloud client: %1".arg("<a href=\"https://doc.owncloud.org/desktop/2.3/owncloudcmd.1.html\">Owncloudcmd</a>"))
                    onLinkActivated: Qt.openUrlExternally(link)
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Nextcloud client: %1".arg("<a href=\"https://docs.nextcloud.com/desktop/2.3/advancedusage.html\">Nextcloudcmd</a>"))
                    onLinkActivated: Qt.openUrlExternally(link)
                }


                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("%1, a Qt library for WebDAV".arg("<a href=\"https://github.com/mhaller/qwebdavlib\">qwebdavlib</a>"))
                    onLinkActivated: Qt.openUrlExternally(link)
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Joan CiberSheep for the %1 logo".arg("<a href=\"https://github.com/snwh/suru-icon-theme\">Suru Theme</a>"))
                    onLinkActivated: Qt.openUrlExternally(link)
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: i18n.tr("Lukas to enable the application with %1".arg("<a href=\"http://clickable.bhdouglass.com/en/latest/index.html\">Clickable</a>"))
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }
            Label {
                textSize: Label.Small
                width: parent.width
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                text: i18n.tr("Released under the terms of the GNU GPL v3")
            }
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                textSize: Label.Small
                horizontalAlignment: Text.AlignHCenter
                text: i18n.tr("Fork of %1".arg("<a href=\"https://launchpad.net/owncloud-sync\">Owncloud-Sync</a>"))
                onLinkActivated: Qt.openUrlExternally(link)
            }
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                textSize: Label.Small
                horizontalAlignment: Text.AlignHCenter
                text: i18n.tr("Source code available on %1").arg("<a href=\"https://github.com/belohoub/UBsync\">github.com/belohoub/UBsync</a>")
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }
    }
}
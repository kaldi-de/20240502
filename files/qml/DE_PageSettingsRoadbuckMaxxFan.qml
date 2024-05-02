import QtQuick 1.1
import "utils.js" as Utils
import com.victron.velib 1.0

MbPage {
	id: root
	title: qsTr("Konfiguration MaxxFan")
    property string bindPrefixRoadbuckMods: "com.victronenergy.settings/Settings/RoadbuckMods"

	model: VisualItemModel
    {
	MbSwitch {
			id: maxxFanOnMainPage
			bind: Utils.path(bindPrefixRbMods, "/MaxxFan/ShowMaxxFanOverview")
			name: qsTr ("MaxxFan Seite anzeigen")
			writeAccessLevel: User.AccessUser
			}

  MbItemOptions
  {
      id: timeFormat
      description: qsTr ("Verbindungstyp")
      bind: Utils.path (bindPrefixRoadbuckMods, "/MaxxFan/ConnectionType")
      possibleValues:
      [
          MbOption { description: qsTr("USB/Seriell"); value: 1 },
          MbOption { description: qsTr("WiFi"); value: 2 },
          MbOption { description: qsTr("deaktiviert"); value: 0 }
      ]
      writeAccessLevel: User.AccessUser
  }

	MbItemOptions
		{
				id: timeFormat
				description: qsTr ("Dynamische Lüftergeschwindigkeit")
				bind: Utils.path (bindPrefixRoadbuckMods, "/MaxxFan/DynamicFanSpeed")
				possibleValues:
				[
						MbOption { description: qsTr("ja"); value: 1 },
						MbOption { description: qsTr("nein"); value: 0 }
				]
				writeAccessLevel: User.AccessUser
		}

		MbSpinBox {
							description: qsTr ("Standard Lüftergeschwindigkeit")
				item
				{
					bind: Utils.path (bindPrefixRoadbuckMods, "/MaxxFan/DefaultFanSpeed")
					decimals: 0
					step: 1
					min: 0
					max: 10
				}
							writeAccessLevel: User.AccessUser
					}

}
}

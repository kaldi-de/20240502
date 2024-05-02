import QtQuick 1.1
import "utils.js" as Utils
import com.victron.velib 1.0

MbPage {
	id: root
	title: qsTr("MaxxFan - Configuration")
    property string bindPrefixRoadbuckMods: "com.victronenergy.settings/Settings/RoadbuckMods"

	model: VisualItemModel
    {
	MbSwitch {
			id: maxxFanOnMainPage
			bind: Utils.path(bindPrefixRbMods, "/MaxxFan/ShowMaxxFanOverview")
			name: qsTr ("Show MaxxFan Page")
			writeAccessLevel: User.AccessUser
			}

  MbItemOptions
  {
      id: timeFormat
      description: qsTr ("Connection Type")
      bind: Utils.path (bindPrefixRoadbuckMods, "/MaxxFan/ConnectionType")
      possibleValues:
      [
          MbOption { description: qsTr("USB/Serial"); value: 1 },
          MbOption { description: qsTr("WiFi"); value: 2 },
          MbOption { description: qsTr("disabled"); value: 0 }
      ]
      writeAccessLevel: User.AccessUser
  }

	MbItemOptions
	  {
	      id: timeFormat
	      description: qsTr ("Dynamic Fan Speed")
	      bind: Utils.path (bindPrefixRoadbuckMods, "/MaxxFan/DynamicFanSpeed")
	      possibleValues:
	      [
	          MbOption { description: qsTr("yes"); value: 1 },
	          MbOption { description: qsTr("no"); value: 0 }
	      ]
	      writeAccessLevel: User.AccessUser
	  }

		MbSpinBox {
							description: qsTr ("Default Fan Speed")
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

import QtQuick 1.1


SvgRectangle {
	id: root

  property VBusItem relay_1: VBusItem { bind: "com.victronenergy.system/Relay/0/State" }
  property VBusItem relay_2: VBusItem { bind: "com.victronenergy.system/Relay/1/State" }
  property VBusItem relay_3: VBusItem { bind: "com.victronenergy.system/Relay/2/State" }
  property VBusItem relay_4: VBusItem { bind: "com.victronenergy.system/Relay/3/State" }

  property VBusItem relay_1_name: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/0/CustomName" }
  property VBusItem relay_2_name: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/1/CustomName" }
  property VBusItem relay_3_name: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/2/CustomName" }
  property VBusItem relay_4_name: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/3/CustomName" }

  property VBusItem relay_1_show: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/0/Show" }
  property VBusItem relay_2_show: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/1/Show" }
  property VBusItem relay_3_show: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/2/Show" }
  property VBusItem relay_4_show: VBusItem { bind: "com.victronenergy.settings/Settings/Relay/3/Show" }


  property VBusItem darkModeItem: VBusItem { bind: "com.victronenergy.settings/Settings/GuiMods/DarkMode" }
  property bool darkMode: darkModeItem.valid && darkModeItem.value == 1

  property VBusItem relay_x: VBusItem { bind: "com.victronenergy.settings/Settings/RoadbuckMods/Relays/Relay_X" }
  property VBusItem relay_y: VBusItem { bind: "com.victronenergy.settings/Settings/RoadbuckMods/Relays/Relay_Y" }


  property int start_x:     relay_x.value
  property int start_y:     relay_y.value
  property int button_size: 30
  property int spacer:      10

  //property int x_correction: relay_1_show.value + relay_2_show.value + relay_3_show.value

  property int x_correction_1: relay_1_show.value == 1 ? 0 : (button_size + spacer)
  property int x_correction_2: relay_2_show.value == 1 ? 0 : (button_size + spacer)
  property int x_correction_3: relay_3_show.value == 1 ? 0 : (button_size + spacer)




}

import QtQuick 1.1
import "utils.js" as Utils

OverviewBoxRelays{
  id:root

Button{
					id: button_relay_1
          visible: relay_1_show.value == 1
          x: start_x
          y: start_y
					width: button_size
					height: button_size
					radius: 5
					baseColor: relay_1.value  == 1 ? "#3399ff" : "silver"

					onClicked: {
            if (relay_1.value === 0)
              return relay_1.setValue (1)
            else if (relay_1.value === 1)
              return relay_1.setValue (0)
							}



					TileText {
            text: "1"
            font.pixelSize: 20
						font.bold: false
						color: relay_1.value  == 1 ? "#ffffff" : "#e1e1e1"
						anchors{
							horizontalCenter: button_relay_1.horizontalCenter
							verticalCenter: button_relay_1.verticalCenter
							}
					}

          TileText {
            y:32
            text: relay_1_name.text
            font.pixelSize: 9
            color: !darkMode ? "black" : "#e1e1e1"

          }

				}


Button{

					id: button_relay_2
          visible: relay_2_show.value == 1
          x: start_x + button_size + spacer - x_correction_1
          y: start_y
					width: button_size
					height: button_size
					radius: 5
					baseColor: relay_2.value  == 1 ? "#3399ff" : "silver"

					onClicked: {
            if (relay_2.value === 0)
              return relay_2.setValue (1)
            else if (relay_2.value === 1)
              return relay_2.setValue (0)
							}



					TileText {
            text: "2"
            font.pixelSize: 20
						font.bold: false
						color: relay_2.value  == 1 ? "#ffffff" : "#e1e1e1"
						anchors{
							horizontalCenter: button_relay_2.horizontalCenter
							verticalCenter: button_relay_2.verticalCenter
							}
					}

          TileText {
            y:32
            text: relay_2_name.text
            font.pixelSize: 9
            color: !darkMode ? "black" : "#e1e1e1"

          }

				}


Button{

					id: button_relay_3
          visible: relay_3_show.value == 1
          x: start_x + (2 * button_size) + (2 * spacer) - x_correction_1 - x_correction_2
          y: start_y
					width: button_size
					height: button_size
					radius: 5
					baseColor: relay_3.value  == 1 ? "#3399ff" : "silver"

					onClicked: {
            if (relay_3.value === 0)
              return relay_3.setValue (1)
            else if (relay_3.value === 1)
              return relay_3.setValue (0)
							}



					TileText {
            text: "3"
            font.pixelSize: 20
						font.bold: false
						color: relay_3.value  == 1 ? "#ffffff" : "#e1e1e1"
						anchors{
							horizontalCenter: button_relay_3.horizontalCenter
							verticalCenter: button_relay_3.verticalCenter
							}
					}

          TileText {
            y:32
            text: relay_3_name.text
            font.pixelSize: 9
            color: !darkMode ? "black" : "#e1e1e1"

          }

				}


Button{

					id: button_relay_4
          visible: relay_4_show.value == 1
          x: start_x + (3 * button_size) + (3 * spacer) - x_correction_1 - x_correction_2 - x_correction_3
          y: start_y
					width: button_size
					height: button_size
					radius: 5
					baseColor: relay_4.value  == 1 ? "#3399ff" : "silver"

					onClicked: {
            if (relay_4.value === 0)
              return relay_4.setValue (1)
            else if (relay_4.value === 1)
              return relay_4.setValue (0)
							}



					TileText {
            text: "4"
            font.pixelSize: 20
						font.bold: false
						color: relay_4.value  == 1 ? "#ffffff" : "#e1e1e1"
						anchors{
							horizontalCenter: button_relay_4.horizontalCenter
							verticalCenter: button_relay_4.verticalCenter
							}
					}

          TileText {
            y:32
            text: relay_4_name.text
            font.pixelSize: 9
            color: !darkMode ? "black" : "#e1e1e1"

          }

				}

}

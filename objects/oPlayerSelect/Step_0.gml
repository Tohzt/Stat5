/// @description Insert description here
// You can write your code in this editor

// Mouse Over
if (position_meeting(mouse_x, mouse_y, id)) {
	if (mouse_check_button_pressed(mb_left)) {
		switch(System.player_type) {
			case Player_StrengthFace:
				System.player_type = Player_RedRoi;
				image_index++;
				break;
			case Player_RedRoi:
				System.player_type = Player_EyeBalls;
				image_index++;
				break;
			case Player_EyeBalls:
				System.player_type = Player_RuBeeb;
				image_index++;
				break;
			case Player_RuBeeb:
				System.player_type = Player_DexDerrel;
				image_index++;
				break;
			case Player_DexDerrel:
				System.player_type = Player_BluBurd;
				image_index++;
				break;
			case Player_BluBurd:
				System.player_type = Player_StrengthFace;
				image_index = 0;
				break;
		}
	}
}

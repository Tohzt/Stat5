/// @description Insert description here
// You can write your code in this editor

draw_self();

// DRAW PLAYER

var _sprite, _sub, _name;
_sub = 0;
switch(System.player_type) {
	case Player_StrengthFace: // STRENGTH
		_sprite = sStrengthFace_WalkR;
		_name = "Strength Face";
		break;
	case Player_RedRoi: // STR/INT
		_sprite = sPlayer_WalkR;
		_name = "Red Roi";
		break;
	case Player_EyeBalls: // INT
		_sprite = sEyeBalls_WalkR;
		_name = "Eye Balls";
		break;
	case Player_RuBeeb: // INT/DEX
		_sprite = sRuBeeb_WalkR;
		_name = "Ru Beeb";
		break;
	case Player_DexDerrel: // DEX
		_sprite = sDexDerrel_WalkR;
		_name = "Dex Derrel";
		break;
	case Player_BluBurd: // DEX/STR
		_sprite = sBlueLady_WalkR;
		_name = "Blu Burd";
		break;
}
draw_sprite_ext(_sprite, _sub, x, y-32, 2, 2, 0, c_white, 1);
draw_set_color(c_white);
draw_set_halign(fa_center)
draw_text(x, y-16,_name)
/// @func scr_pAction_Aim()
/// @desc Aiming Mechanic Handler
/// @param aiming bool

// SET TARGET TO AIMED DIRECTION
tar_x = x + lengthdir_x(tar_dist, look_dir);
tar_y = y + lengthdir_y(tar_dist, look_dir);
		
// LOOK IN AIMING DIRECTION
switch(floor(look_dir)) { 
	case 0:
		anim_current = anim_walkR;
		break;
	case 90:
		anim_current = anim_walkU;
		break;
	case 180:
		anim_current = anim_walkL;
		break;
	case 270:
		anim_current = anim_walkD;
		break;
	case 360:
		anim_current = anim_walkR;
		break;
}

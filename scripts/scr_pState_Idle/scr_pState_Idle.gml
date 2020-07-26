/// @func scr_pState_Idle
/// @desc Idle State Management
/// @param moving
/// @param aiming
//show_debug_message("IDLE");

var _isMoving = argument0;
var _isAiming = argument1;

image_speed = 0;

if (_isAiming) { 
	scr_pAction_Aim(); } else {
	// NOTE: remove '//' for target to be in front of movement
	tar_x = x;// + lengthdir_x(tar_dist, move_dir);
	tar_y = y;// + lengthdir_y(tar_dist, move_dir);
}
		
if (_isMoving) state = STATES.WALK;
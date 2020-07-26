/// @func scr_pState_Slide
/// @desc Idle State Management
/// @param moving
/// @param aiming
//show_debug_message("SLIDE");

var _isMoving = argument0;
var _isAiming = argument1;

if (_isAiming) { 
	scr_pAction_Aim(); } else {
	// NOTE: remove '//' for target to be in front of movement
	tar_x = x;// + lengthdir_x(tar_dist, move_dir);
	tar_y = y;// + lengthdir_y(tar_dist, move_dir);
}

// GET NEXT POSITION
var new_x = (x+move_x) div TILE_W;
var new_y = (y+move_y) div TILE_W;
var tileData = global.theMap[# new_x, new_y];

// COLLIDE WITH VOID OR LEDGE
if (tileData[? "Type"] == oIce)
//&&	abs(iso_z - tileData.iso_z) <= z_range) 
{
	show_debug_message("slippy")
	iso_z = tileData[? "Z"];
	// APPLY MOVEMENT IF NEXT TILE IS GROUND AND WITHIN Z-RANGE
	x = floor(x + move_x);
	y = floor(y + move_y);
}
else {
	state = STATES.IDLE;
}
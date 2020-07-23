/// @func scr_pState_Walk
/// @desc Walking State Management
/// @param moving bool
/// @param aiming bool

var _isMoving = argument0;
var _isAiming = argument1;

#region ANIMATION/MOVEMENT HANDLER
if (_isMoving)  {
	image_speed = anim_speed; // <---- TEMPORARY (animation pending)
	
	// LOOK IN MOVING DIRECTION (default)
	switch(floor(move_dir)) { 
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
	
	// AIM WHILE MOVING
	if (_isAiming) { scr_pAction_Aim(); } else {
		look_dir = move_dir;
		// NOTE: remove '//' for target to be in front of movement
		tar_x = x;// + lengthdir_x(tar_dist, move_dir);
		tar_y = y;// + lengthdir_y(tar_dist, move_dir);
	}
	
	// SET SPEED (walk/run)
	var _speed = speed_walk;
	if(lShift) {
		if (stamina > 0) {
			_speed = speed_run;
			stamina --;
		}
	}
	
	// UPDATE MOVEMENT DATA
	move_x = lengthdir_x(_speed, move_dir);
	move_y = lengthdir_y(_speed, move_dir);
}
// NOT MOVING
else {
	image_speed = 0;
	image_index = 0;
	state = STATES.IDLE;
	/*
	if (_isAiming) {
		// SET TARGET TO AIMED DIRECTION
		tar_x = x + lengthdir_x(tar_dist, look_dir);
		tar_y = y + lengthdir_y(tar_dist, look_dir);
		
		// LOOK AT AIMING DIRECTIONG
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
	} else {
		// DEFAULT: TARGET FOLLOWS PLAYER
	}
	*/
}
#endregion

// GET NEXT POSITION
var new_x = (x+move_x) div TILE_W;
var new_y = (y+move_y) div TILE_W;
var tileData = global.theMap[# new_x, new_y];

// COLLIDE WITH VOID OR LEDGE
if (tileData != 0
&&	abs(iso_z - tileData.iso_z) <= z_range) 
{
	iso_z = tileData.iso_z;
	// APPLY MOVEMENT IF NEXT TILE IS GROUND AND WITHIN Z-RANGE
	x = floor(x + move_x);
	y = floor(y + move_y);
}
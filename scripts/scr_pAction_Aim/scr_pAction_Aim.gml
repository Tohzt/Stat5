/// @func scr_pAction_Aim()
/// @desc Aiming Mechanic Handler
/// @param aiming bool

// SET TARGET TO AIMED DIRECTION
tar_x = x + lengthdir_x(tar_dist, look_dir);
tar_y = y + lengthdir_y(tar_dist, look_dir);
var _hlPos_x = gPos_x + ((lengthdir_x(tar_dist, look_dir)) div TILE_W);
var _hlPos_y = gPos_y + ((lengthdir_y(tar_dist, look_dir)) div TILE_W);

// APPLY TARGET TO MAP HIGHLIGHT

var _size_x = 0;
var _xx, _yy;
var _cX = true;
var _cY = false;

// TARGET OVER AREA
switch(skill_current) {
	case SKILLS.WALL:
		_size_x   = 3;
		break;
	case SKILLS.PIT:
		_size_x   = 1;
		break;
}

if (_size_x > 0)
for (var i = -(_size_x div 2); i <= _size_x div 2; i++) {
	if (look_dir == 0 || look_dir == 180 || look_dir == 360) {
		_cX = false;
		_cY = true;
	}
	_xx = _hlPos_x + i*_cX;
	_yy = _hlPos_y + i*_cY;
	
	var _thisTile = global.theMap[# _xx, _yy];
	_thisTile[? "HL"] = true;
	global.theMap[# _xx, _yy] = _thisTile;
}

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

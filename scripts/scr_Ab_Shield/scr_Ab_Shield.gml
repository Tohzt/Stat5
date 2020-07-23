///@func scr_Ab_Shield
///@desc Put up shiled

var _size   = argument0;
var _height = argument1;
var _dur    = argument2;

var _xx, _yy;
var _cX = true;
var _cY = false;

for (var i = -(_size div 2); i <= _size div 2; i++) {
	if (look_dir == 0 || look_dir == 180 || look_dir == 360) {
		_cX = false;
		_cY = true;
	}
	_xx = global.HL_X + i*_cX;
	_yy = global.HL_Y + i*_cY;
	
	var thisTile = global.theMap[# _xx, _yy];
	if (thisTile != 0) {
		thisTile.iso_z += _height;
		thisTile.alarm[0] = _dur;
		global.theMap[# _xx, _yy] = thisTile;
	}
}

/*
var thisTile = global.theMap[# global.HL_X,global.HL_Y];
if (thisTile != 0) {
	thisTile.iso_z += _height;
	global.theMap[# global.HL_X,global.HL_Y] = thisTile;
}
thisTile = global.theMap[# global.HL_X-1,global.HL_Y];
if (thisTile != 0) {
	thisTile.iso_z += _height;
	global.theMap[# global.HL_X-1,global.HL_Y] = thisTile;
}
thisTile = global.theMap[# global.HL_X+1,global.HL_Y];
if (thisTile != 0) {
	thisTile.iso_z += _height;
	global.theMap[# global.HL_X+1,global.HL_Y] = thisTile;
}
*/
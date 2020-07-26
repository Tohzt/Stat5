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
	
	var _thisTile = global.theMap[# _xx, _yy];
	if (_thisTile != 0
	&&	_thisTile[? "Z"] == _thisTile[? "iZ"]
	&&	_thisTile[? "Z"] == iso_z
	&&	_thisTile[? "HL"]) {
		// SUMMON SHEILD
		_thisTile[? "Z"] = iso_z + _height;
		_thisTile[? "ResPos"] = _dur;
		global.theMap[# _xx, _yy] = _thisTile;
	}
}
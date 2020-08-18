/// @description Insert description here
// You can write your code in this editor

iso_x = toIso_X(x,y);
iso_y = toIso_Y(x,y);

// SET DEPTH
var _thisTile = global.theMap[# gPos_x, gPos_y];
set_Depth(_thisTile[? "X"], _thisTile[? "Y"], _thisTile[? "Z"]);

iso_z  = _thisTile[? "Z"];
init_z = _thisTile[? "iZ"];

// RESET POSITION
if (_thisTile[? "ResPos"] != -1) {
	alarm[0] = _thisTile[? "ResPos"];
	_thisTile[? "ResPos"] = -1;
}
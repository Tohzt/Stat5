/// @description RESET BLOCK Z

iso_z = init_z;

show_debug_message("POP")

var _thisTile = global.theMap[# gPos_x, gPos_y];
if (_thisTile != 0) {
	_thisTile[? "Z"] = init_z;
	_thisTile[? "Depth"] = set_Depth(_thisTile[? "X"], _thisTile[? "Y"], _thisTile[? "Z"]);
	global.theMap[# gPos_x, gPos_y] = _thisTile;
}
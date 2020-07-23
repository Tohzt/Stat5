/// @description FIREBALL MOVEMENT MECHANICS
visible = true;
// SET DEPTH
gPos_x = x div TILE_W;
gPos_y = y div TILE_W;
var mapDepthData = global.theMap[# gPos_x, gPos_y];
if (mapDepthData != 0) {
	depth = mapDepthData.depth -1;
}

// GET ISOMETRIC POSITION
if (global.isIso) {
	iso_x = toIso_X(x, y);
	iso_y = toIso_Y(x, y);
	
}

// GET MOVEMENT VALUES
move_x = lengthdir_x(spd, move_dir);
move_y = lengthdir_y(spd, move_dir);

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
else {
	instance_destroy();
}
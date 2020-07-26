/// @description Insert description here
// You can write your code in this editor


if (global.isIso) {
	// DRAW BLOCK
	draw_sprite(
		sprite_index,
		image_index-1,
		iso_x,
		iso_y - iso_z);	
	
	// DRAW HIGHLIGHT GRID
	var _thisTile = global.theMap[# gPos_x, gPos_y];
	if (_thisTile[? "HL"]) {
		var iso_xHL = toIso_X(gPos_x * TILE_W,gPos_y * TILE_W);
		var iso_yHL = toIso_Y(gPos_x * TILE_W,gPos_y * TILE_W);
	
		draw_sprite(
			sHighlight,
			0,
			iso_xHL,
			iso_yHL - iso_z);
	}
}
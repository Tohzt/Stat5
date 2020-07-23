/// @description Insert description here
// You can write your code in this editor

if (global.isIso) {
	draw_sprite(
		sprite_index,
		image_index-1,
		iso_x,
		iso_y - iso_z);	
		
	// DRAW HIGHLIGH
	if (global.HL_X != -1 && global.HL_Y != -1)
	if (id == global.theMap[# global.HL_X, global.HL_Y]) {
		var iso_xHL = toIso_X(global.HL_X * TILE_W, global.HL_Y * TILE_W);
		var iso_yHL = toIso_Y(global.HL_X * TILE_W, global.HL_Y * TILE_W);
	
		draw_sprite(
			sHighlight,
			0,
			iso_xHL,
			iso_yHL - iso_z);
	}
	
	// DRAW PLAYER TARGET
	if (Player.tar_x != -1
	&&	Player.tar_y != -1)
		if (id == global.theMap[# Player.tar_x div TILE_W, Player.tar_y div TILE_W]) {
			var iso_xTar = toIso_X(Player.tar_x * TILE_W, Player.tar_y * TILE_W);
			var iso_yTar = toIso_Y(Player.tar_x * TILE_W, Player.tar_y * TILE_W);
	
			draw_sprite(
				sHighlight,
				0,
				iso_xTar,
				iso_yTar - iso_z);
		}
}

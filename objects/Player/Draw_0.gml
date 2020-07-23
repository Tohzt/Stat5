/// @description Draw PLAYER SPRITE

if (global.isIso) {
	draw_sprite(sprite_index, image_index, iso_x, iso_y - iso_z);
}
else {
	draw_sprite(sprite_index, image_index, x, y);
}


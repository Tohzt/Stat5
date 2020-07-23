/// @description Insert description here
// You can write your code in this editor
/// @description Draw PLAYER SPRITE

if (global.isIso) {
	draw_sprite(anim_shadow, image_index, iso_x, iso_y - iso_z);
	draw_sprite(anim_current, image_index, iso_x, iso_y - iso_z);
}
else {
	draw_sprite(anim_current, image_index, x, y);
}
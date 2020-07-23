/// @description Insert description here
// You can write your code in this editor


if (global.isIso) {
	x = floor(Player.iso_x);
	y = floor(Player.iso_y - Player.iso_z);
} else {
	x = Player.x;
	y = Player.y;
}
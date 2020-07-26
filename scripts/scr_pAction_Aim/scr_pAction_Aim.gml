/// @func scr_pAction_Aim()
/// @desc Aiming Mechanic Handler
/// @param aiming bool

// SET TARGET TO AIMED DIRECTION
tar_x = x + lengthdir_x(tar_dist, look_dir);
tar_y = y + lengthdir_y(tar_dist, look_dir);

// APPLY HIGHLIGHT TO MAP GRID
var _thisTile = global.theMap[# gPos_x, gPos_y + 2];
_thisTile[? "HL"] = true;
global.theMap[# gPos_x, gPos_y] = _thisTile;
				
				
/*
// APPLY HIGHLIGHT TO MAP GRID
for (var ii = 0; ii < Player.hl_w; ii++) {
	for (var jj = 0; jj < Player.hl_h; jj++) {
		if (Player.hl_Grid[# ii,jj] == 1) {
			// ADJUST FOR GRID POSITION
			var _xPos = (Player.gPos_x - Player.hl_w div 2)+ii;
			var _yPos = (Player.gPos_y - Player.hl_h div 2)+jj;
			
			if (isWithinRange(_xPos, 0, MAP_W)
			&&	isWithinRange(_yPos, 0, MAP_H)) {
				var _thisTile = global.theMap[# _xPos, _yPos];
				_thisTile[? "HL"] = true;
				global.theMap[# _xPos, _yPos] = _thisTile;
			}
		}
	}
}
*/
		
// LOOK IN AIMING DIRECTION
switch(floor(look_dir)) { 
	case 0:
		anim_current = anim_walkR;
		break;
	case 90:
		anim_current = anim_walkU;
		break;
	case 180:
		anim_current = anim_walkL;
		break;
	case 270:
		anim_current = anim_walkD;
		break;
	case 360:
		anim_current = anim_walkR;
		break;
}

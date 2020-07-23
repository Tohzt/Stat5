/// @description Insert description here
// You can write your code in this editor

if (global.isIso) {
	var grid_xPos = x div MAP_W;
	var grid_yPos = y/2	 div MAP_H;
	
	var tileData = global.theMap[# grid_xPos,grid_yPos];
			
	var tileIndex = tileData[TILE.SPRITE];
	var tileZ     = tileData[TILE.Z];
	
	tileData[TILE.Z] = 5;
	global.theMap[# grid_xPos,grid_yPos] = tileData;
		
	if (tileIndex == 2) show_debug_message("HERE")
		
	
	var screenX = TileToScreen_X(grid_xPos, grid_yPos);
	var screenY = TileToScreen_Y(grid_xPos, grid_yPos);	
			
	draw_sprite(sprite_index, image_index, screenX, screenY);
}
else {
	var grid_xPos = x div MAP_W;
	var grid_yPos = y div MAP_H;
	
	var tileData = global.theMap[# grid_xPos,grid_yPos];
		
	var tileIndex = tileData[TILE.SPRITE];
	var tileZ     = tileData[TILE.Z];
	
	tileData[TILE.SPRITE] = 0;
	global.theMap[# grid_xPos,grid_yPos] = tileData;
		
	
	var screenX = toIso_X(x,y);
	var screenY = toIso_Y(x,y);	
			
	draw_sprite(sprite_index, image_index, x, y); 
}
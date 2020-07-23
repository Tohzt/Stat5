var screenX, screenY;

for (var tX = 0; tX < MAP_W; tX++){
	for (var tY = 0; tY < MAP_H; tY++)
	{
		// SCREEN POS
		screenX = toIso_X(tX * TILE_W, tY * TILE_W);
		screenY = toIso_Y(tX * TILE_W, tY * TILE_W);
		
		// MAP GRID DATA
		var tileData  = global.theMap[# tX,tY];
		if (tileData != 0) {
			
			/**********************************
			 * DRAW OBJECTS ON TOP OF TERRAIN *
			 **********************************/
		}
	}
}
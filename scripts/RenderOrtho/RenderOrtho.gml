var tileData, screenX, screenY;

for (var tX = 0; tX < MAP_W; tX++){
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX,tY];
		screenX = TileToScreen_X(tX,tY);
		screenY = TileToScreen_Y(tX,tY);
		
		if (tileData != 0) 
			draw_sprite(
				sOrthoTile,
				tileData.image_index-1,
				tX * TILE_W,
				tY * TILE_W);

		// HIGHLIGHT SELECTED
		if (global.HL_X == tX
		&&  global.HL_Y == tY){
			draw_sprite(
				sOrthoTile,
				2,
				tX * TILE_W,
				tY * TILE_W);
		}
		#region HIGHLIGHT UNDER MOUSE
		// HIGHLIGHT UNDER MOUSE
		/*
		if (mouse_x div TILE_W == tX && mouse_y div TILE_W == tY)
		{
			draw_sprite(
				sOrthoTile,
				2,
				tX * TILE_W,
				tY * TILE_W);
		}
		*/
		#endregion
	}
}
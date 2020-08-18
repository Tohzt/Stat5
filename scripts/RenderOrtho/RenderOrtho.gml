var tileData, screenX, screenY;


if (room == rm_Main) 
{
	for (var tX = 0; tX < MAP_W; tX++){
		for (var tY = 0; tY < MAP_H; tY++)
		{
			tileData = global.theMap[# tX,tY];
			screenX = TileToScreen_X(tX,tY);
			screenY = TileToScreen_Y(tX,tY);
			var spr_sub = -1;
			
			switch(tileData[? "Type"]) {
				case oWater:
					spr_sub = 0;
					break;
					
				case oIce:
					spr_sub = 1;
					break;
					
				case oGrass:
					spr_sub = 2;
					break;
					
				case oStoneWall:
					spr_sub = 3;
					break;
					
				case oFire:
					spr_sub = 4;
					break;
			}
			
			if (spr_sub > -1) {
				draw_sprite(
					sOrthoTiles,
					spr_sub,
					tX * TILE_W,
					tY * TILE_W);
			}
		}
	}
}
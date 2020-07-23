/// @description INITIALIZE SYATEM
randomize();

layer_set_visible("Map", false);
layer_set_visible("Obs", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);
global.theObs = ds_grid_create(MAP_W, MAP_H);

tileMap = layer_tilemap_get_id("Map");
//tileObs = layer_tilemap_get_id("Obs")

for (var i = 0; i < MAP_W; i++){
	for (var j = 0; j < MAP_H; j++)
	{
		// MAP TILES
		/*
		var tileMapData = tilemap_get(tileMap, tX, tY);
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0;//irandom(2);
		global.theMap[# tX,tY] = thisTile;
		
		// OBSTACLE TILES
		var tileObsData = tilemap_get(tileObs, tX, tY);
		var _thisTile = [-1, 0];
		_thisTile[TILE.SPRITE] = tileObsData;
		_thisTile[TILE.Z] = thisTile;
		global.theObs[# tX,tY] = _thisTile;
		*/
		
		var tileMapData = tilemap_get(tileMap, i, j);
		if (tileMapData != 0) {
			// GET X/Y COORD
			var pX = i * TILE_W;
			var pY = j * TILE_W;
			// INITIALIZE BLOCK
			var block_inst = instance_create_layer(
				pX,
				pY,
				"Terrain",
				oBlock
			);
			// UPDATE BLOCK VARIABLES
			block_inst.gPos_x = i;
			block_inst.gPos_y = j;
			block_inst.iso_z  = 0;
			block_inst.init_z = 0;
			block_inst.image_index = tileMapData;
			// ADD NEW BLOCK TO MAP GRID
			global.theMap[# i, j] = block_inst;	
		}
	}
}

// RENDER VARIABLES
global.isIso = false;

// SELECTION (avoiding mouse-math)
global.HL_X = -1;
global.HL_Y = -1;
delta_z = 8;
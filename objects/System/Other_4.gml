/// @description Insert description here
// You can write your code in this editor

if (room == rm_Main) {

// DISABLE TILE LAYERS (visiblilty)
layer_set_visible("Map", false);
layer_set_visible("Spawn", false);

// INITIALIZE DATA STRUCTURES
global.theMap = ds_grid_create(MAP_W, MAP_H);
//global.theObs = ds_grid_create(MAP_W, MAP_H);

tileMap   = layer_tilemap_get_id("Map");
tileSpawn = layer_tilemap_get_id("Spawn")

for (var i = 0; i < MAP_W; i++){
	for (var j = 0; j < MAP_H; j++)
	{
		// GET TILE-MAP DATA	
		var tileMapData = tilemap_get(tileMap, i, j);
		if (tileMapData >= 0) {
			var _thisTile = ds_map_create();
			
			// GET X/Y COORD
			var _pX = i * TILE_W;
			var _pY = j * TILE_W;
			
			var _blockType = -1;
			var _newIsoZ = 0;
			
			// DIFFERENTIATE TILE TYPES
			switch(tileMapData) {
				case 1: // WATER
					_blockType = oWater;
					_newIsoZ = -delta_z;
					break;
				
				case 2: // ICE
					_blockType = oIce;
					break;
					
				case 3: // GRASS
					_blockType = oGrass;
					break;
					
				case 4: // BRICK_WALL
					_blockType = oStoneWall;
					_newIsoZ = 128;
					break;
					
				case 5: // FIRE
					_blockType = oFire;
					break;
			}
			
			if (_blockType != -1)
			{
				// INITIALIZE BLOCK
				var block_inst = instance_create_layer(
					_pX,
					_pY,
					"Terrain",
					_blockType
				);
				// UPDATE BLOCK VARIABLES
				block_inst.gPos_x = i;
				block_inst.gPos_y = j;
				block_inst.iso_z  = _newIsoZ;
				block_inst.init_z = _newIsoZ;
				block_inst.image_index = tileMapData;
			
				// ADD NEW MAP TO GRID
				ds_map_add(_thisTile, "X",    _pX);
				ds_map_add(_thisTile, "Y",    _pY);
				ds_map_add(_thisTile, "Z",    _newIsoZ);
				ds_map_add(_thisTile, "iZ",   _newIsoZ);
				ds_map_add(_thisTile, "Type", _blockType);
				ds_map_add(_thisTile, "ResPos", -1);
				ds_map_add(_thisTile, "Locked", false);
				ds_map_add(_thisTile, "HL", false);
				global.theMap[# i, j] = _thisTile;	
			}
		}
		
		
		// GET TILE-MAP DATA	
		var tileSpawnData = tilemap_get(tileSpawn, i, j);
		if (tileSpawnData != 0) {
			instance_create_layer(i * TILE_W, j * TILE_W, "Instances", player_type);
		}
	}
}
}
/// @desc SYSTEM STEP EVENT

// SELECT GRID LAYER
Player_Input();

// DEFAULT HL

for (var ii = 0; ii < MAP_W; ii++) {
	for (var jj = 0; jj < MAP_H; jj++) {
		var _thisTile = global.theMap[# ii,jj];
		_thisTile[? "HL"] = 0;
		global.theMap[# ii,jj] = _thisTile;
	}
}

// MANIPULATE HIGHLIGHTED TILE
if (global.HL_X != -1
&&	global.HL_Y != -1){
#region CHANGE ELEVATION
	if (incZ) {
		var _thisTile = global.theMap[# global.HL_X,global.HL_Y];
		if (_thisTile != 0) {
			_thisTile[? "Z"] += delta_z;
			_thisTile[? "iZ"] = _thisTile[? "Z"];
			_thisTile[? "Depth"] = set_Depth(_thisTile[? "X"], _thisTile[? "Y"], _thisTile[? "Z"])
			global.theMap[# global.HL_X,global.HL_Y] = _thisTile;
		}
	}
	if (decZ) {
		var _thisTile = global.theMap[# global.HL_X,global.HL_Y];
		if (_thisTile != 0) {
			_thisTile[? "Z"] -= delta_z;
			_thisTile[? "iZ"] = _thisTile[? "Z"];
			global.theMap[# global.HL_X,global.HL_Y] = _thisTile;
		}
	} #endregion

	#region CHANGE BLOCK TYPE
	/*
	if (incBlock) {
		var _thisTile = global.theMap[# global.HL_X,global.HL_Y];
		_thisTile.image_index = 1 + !(_thisTile.image_index-1);
		global.theMap[# global.HL_X,global.HL_Y] = _thisTile;
	}
	if (decBlock) {
		var _thisTile = global.theMap[# global.HL_X,global.HL_Y];
		_thisTile.image_index = 1 + !(_thisTile.image_index-1);
		global.theMap[# global.HL_X,global.HL_Y] = _thisTile;
	}*/
	#endregion
}
	
	
	
	

// DEFAULT FUNCTIONS
DEBUG();
	
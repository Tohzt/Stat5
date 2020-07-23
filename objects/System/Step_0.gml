/// @desc SYSTEM STEP EVENT

// SELECT GRID LAYER
Player_Input();

// MOVE SELECTED
/*
if selU global.HL_Y--; 
if selL global.HL_X--;
if selD global.HL_Y++;
if selR global.HL_X++;
*/
if (global.HL_X != -1
&&	global.HL_Y != -1){
#region CHANGE ELEVATION
	if (incZ) {
		var thisTile = global.theMap[# global.HL_X,global.HL_Y];
		if (thisTile != 0) {
			thisTile.iso_z += delta_z;
			global.theMap[# global.HL_X,global.HL_Y] = thisTile;
		}
	}
	if (decZ) {
		var thisTile = global.theMap[# global.HL_X,global.HL_Y];
		if (thisTile != 0) {
			thisTile.iso_z -= delta_z;
			global.theMap[# global.HL_X,global.HL_Y] = thisTile;
		}
	} #endregion

	#region CHANGE BLOCK TYPE
	if (incBlock) {
		var thisTile = global.theMap[# global.HL_X,global.HL_Y];
		thisTile.image_index = 1 + !(thisTile.image_index-1);
		global.theMap[# global.HL_X,global.HL_Y] = thisTile;
	}
	if (decBlock) {
		var thisTile = global.theMap[# global.HL_X,global.HL_Y];
		thisTile.image_index = 2;
		global.theMap[# global.HL_X,global.HL_Y] = thisTile;
	} #endregion
}
	
	
	
	

// DEFAULT FUNCTIONS
DEBUG();
	
/// @description PLAYER MOVEMENT MECHANICS

// SET DEPTH
gPos_x = x div TILE_W;
gPos_y = y div TILE_W;
var _thisTile = global.theMap[# gPos_x, gPos_y];
if (_thisTile != 0) {
	set_Depth(_thisTile[? "X"], _thisTile[? "Y"], _thisTile[? "Z"]);
	depth--;
	iso_z = _thisTile[? "Z"];
}

Player_Input();

// MOVE (not in slide-state)
if (state != STATES.SLIDE) {
	move_x = 0;
	move_y = 0;
	look_x = 0;
	look_y = 0;

// KEYBOARD TO MOVE_DIR
	if keyW move_y = -1;
	if keyA move_x = -1;
	if keyS move_y =  1;
	if keyD move_x =  1;
}

// KEYBOARD TO LOOK_DIR
if lookR look_x =  1;
if lookU look_y = -1;
if lookL look_x = -1;
if lookD look_y =  1;

// CHECK FOR MOVEMENT/AIMING
is_moving = (abs(move_x) + abs(move_y) > 0) ? true : false;
is_aiming = (abs(look_x) + abs(look_y) > 0) ? true : false;

// CALCULATE DIRECTIONS
if (is_moving) { move_dir = point_direction(0,0,move_x,move_y); move_dir = (move_dir+45) div 90 * 90; }
if (is_aiming) { look_dir = point_direction(0,0,look_x,look_y); look_dir = (look_dir+45) div 90 * 90; }

// GET ISOMETRIC POSITION
if (global.isIso) {
	iso_x = toIso_X(x, y);
	iso_y = toIso_Y(x, y);
	
}

// STATE MACHINE
switch(state) {
	case STATES.IDLE:
		scr_pState_Idle(is_moving, is_aiming);
		break;
	case STATES.WALK:
		scr_pState_Walk(is_moving, is_aiming);
		break;
	case STATES.SLIDE:
		scr_pState_Slide(is_moving, is_aiming);
		break;
}
sprite_index = anim_current;

// HIGHLIGHT TARGET POSITION
global.HL_X = tar_x div TILE_W;
global.HL_Y = tar_y div TILE_W;

// SKILL SELECT
if (skill_1) {
	skill_current = SKILLS.FIREBALL;
	skill_sprite = spr_Fireball;
	skill_spawn = obj_Fireball;
};
if (skill_2) {
	skill_current = SKILLS.ICEBALL;
	skill_sprite = spr_Iceball;
	skill_spawn = obj_Iceball;
};
if (skill_3) {
	skill_current = SKILLS.WALL;
	skill_sprite = spr_Icon_Wall;
	skill_spawn = pointer_null;
};
if (skill_4) {
	skill_current = SKILLS.PIT;
	skill_sprite = spr_Icon_Pit;
	skill_spawn = pointer_null;
}

// UPDATE VARIABLES FOR ABILITY STATE
switch (skill_current) {
	case SKILLS.FIREBALL:
		tar_dist = 64;
		break;
	case SKILLS.ICEBALL:
		tar_dist = 64;
		break;
	case SKILLS.WALL:
		tar_dist = 128;
		break;
	case SKILLS.PIT:
		tar_dist = 128;
		break;
}

// ATTACK MECHANICS
scr_pAction_Ability();

// HURT BY FLOOR
if (_thisTile[? "Type"] == oFire) {
	if (vulnerable) {
		vulnerable = false;
		alarm[1] = iFrames;
		hp = max(0, hp-10);
	}
}

// DEATH STATE
if (hp <= 0) {
	show_debug_message("YOU DIED!");
	game_restart();
}


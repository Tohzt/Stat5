/// @description Insert description here
// You can write your code in this editor
/// @description INITIALIZELAYER

// PERSPECTIVE
iso_x = x;
iso_y = y;
iso_z = 0;
z_range = System.delta_z;

gPos_x = pointer_null;
gPos_y = pointer_null;

// VITALS
max_hp = 100;
hp = max_hp;
max_mp = 100;
mp = max_mp;
max_stamina = 100;
stamina = max_stamina;
vulnerable = true;
iFrames = 30;

// RECOVERY
alarm[0] = 60;
mps = 3;
hps = 3;
sps = 10;

//MOVEMENT/AIMING
move_x = 0;
move_y = 0;

look_x = 0;
look_y = 0;

anim_speed = 1;

tar_x = x;
tar_y = y;
tar_dist = 64;

speed_walk = 2;
speed_run  = 4;

move_dir = 0;
look_dir = 0;

is_aiming = false;
is_moving = false;

// INITIALIZE CAMERA
instance_create_depth(x,y,depth,oCamera);

// STATE MACHINE
enum STATES {
	IDLE,
	WALK,
	SLIDE,
	CASTING
}
state = STATES.IDLE;
image_speed = 0;

// ABILITY STATE MACHING
enum SKILLS {
	FIREBALL,
	ICEBALL,
	WALL,
	PIT
}
skill_current = SKILLS.FIREBALL;
skill_sprite = spr_Fireball;
skill_cooldown = 0;
skill_cost = 10;

skill_spawn = obj_Fireball;

cd_fireball = 50;

ability_01 = spr_Fireball;
ability_02 = spr_Iceball;
ability_03 = spr_Icon_Wall;
ability_04 = spr_Icon_Pit;
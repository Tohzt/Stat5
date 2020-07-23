/// @func Player_Input();

// MOVEMENT KEYS
keyW = keyboard_check(ord("W"));
keyA = keyboard_check(ord("A"));
keyS = keyboard_check(ord("S"));
keyD = keyboard_check(ord("D"));

// LOOK KEYS
lookR = keyboard_check(vk_right);
lookU = keyboard_check(vk_up);
lookL = keyboard_check(vk_left);
lookD = keyboard_check(vk_down);

// SELECTION KEYS
skill_1 = keyboard_check_pressed(ord("1"));
skill_2 = keyboard_check_pressed(ord("2"));
skill_3 = keyboard_check_pressed(ord("3"));
skill_4 = keyboard_check_pressed(ord("4"));

// TRIGGERS
lShift = keyboard_check(vk_lshift);
rShift = keyboard_check_pressed(vk_rshift);

// CHANGE Z
incZ = keyboard_check_pressed(ord("I"));
decZ = keyboard_check_pressed(ord("K"));
// CHANGE BLOCK TYPE
incBlock = keyboard_check_pressed(ord("L"));
decBlock = keyboard_check_pressed(ord("J"));
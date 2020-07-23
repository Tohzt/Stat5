/// @desc DEBUG

if (keyboard_check_pressed(vk_escape))
	game_restart();
	
// TOGGLE RENDER MODE
if (keyboard_check_pressed(vk_tab))
	global.isIso = !global.isIso;
	
	
if (!global.isIso) 
{
}
else
{
}
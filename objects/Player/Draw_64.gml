/// @description HUD

// DRAW VITALS DISPLAY
draw_sprite(spr_Vitals_HUD, 0, 40, 40);
// HEALTH
draw_sprite_part(
	spr_Vitals,
	0, 
	0, 
	0,
	lerp(0,104,hp/max_hp),
	52,
	80, 14);
// STANIMA
draw_sprite_part(
	spr_Vitals,
	1, 
	0, 
	0,
	lerp(0,104,stamina/max_stamina),
	52,
	80, 14);
// ENERGY
draw_sprite_part(
	spr_Vitals,
	2, 
	0, 
	0,
	lerp(0,104,mp/max_mp),
	52,
	80, 14);
	
// SKILL HUD
draw_sprite(spr_Skills, 0, view_wport[0] - 80, view_hport[0] - 62)
switch(skill_current) {
	case SKILLS.FIREBALL:
		// ABILITY 01
		draw_sprite(spr_SkillSelected, 0, view_wport[0] - 80 + 50, view_hport[0] - 62);
		break;
	case SKILLS.ICEBALL:
		// ABILITY 02
		draw_sprite(spr_SkillSelected, 0, view_wport[0] - 80,      view_hport[0] - 62 - 32);
		break;
	case SKILLS.WALL:
		// ABILITY 03
		draw_sprite(spr_SkillSelected, 0, view_wport[0] - 80 - 50, view_hport[0] - 62);
		break;
	case SKILLS.PIT:
		// ABILITY 03
		draw_sprite(spr_SkillSelected, 0, view_wport[0] - 80,      view_hport[0] - 62 + 32);
		break;
}
draw_sprite(ability_01, 0, view_wport[0] - 80 + 50, view_hport[0] - 62);
draw_sprite(ability_02, 0, view_wport[0] - 80,      view_hport[0] - 62 - 32);
draw_sprite(ability_03, 0, view_wport[0] - 80 - 50, view_hport[0] - 62);
draw_sprite(ability_04, 0, view_wport[0] - 80,      view_hport[0] - 62 + 32);
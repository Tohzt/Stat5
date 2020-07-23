///@func scr_Ab_Projectile
///@desc Throw Projectile

skill_cooldown = cd_fireball;
mp -= skill_cost
var _ability = instance_create_depth(x,y,depth,skill_spawn);
_ability.move_dir = look_dir;
with (_ability) {
	//move_dir = other.move_dir;
	iso_z = other.iso_z;
	switch(move_dir) {
		case 0:
			if (other.skill_current == SKILLS.FIREBALL) {
				anim_current = spr_Fireball_Right;
				anim_shadow = spr_Fireball_Shadow_Right;
			}
			else {
				anim_current = spr_Iceball_Right;
				anim_shadow = spr_Iceball_Shadow_Right;
			}
			break;
		case 90:
			if (other.skill_current == SKILLS.FIREBALL) {
				anim_current = spr_Fireball_Up;
				anim_shadow = spr_Fireball_Shadow_Up;
			}
			else {
				anim_current = spr_Iceball_Up;
				anim_shadow = spr_Iceball_Shadow_Up;
			}
			break;
		case 180:
			if (other.skill_current == SKILLS.FIREBALL) {
				anim_current = spr_Fireball_Left;
				anim_shadow = spr_Fireball_Shadow_Left;
			}
			else {
				anim_current = spr_Iceball_Left;
				anim_shadow = spr_Iceball_Shadow_Left;
			}
			break;
		case 270:
			if (other.skill_current == SKILLS.FIREBALL) {
				anim_current = spr_Fireball_Down;
				anim_shadow = spr_Fireball_Shadow_Down;
			}
			else {
				anim_current = spr_Iceball_Down;
				anim_shadow = spr_Iceball_Shadow_Down;
			}
			break;
		case 360:
			if (other.skill_current == SKILLS.FIREBALL) {
				anim_current = spr_Fireball_Right;
				anim_shadow = spr_Fireball_Shadow_Right;
			}
			else {
				anim_current = spr_Iceball_Right;
				anim_shadow = spr_Iceball_Shadow_Right;
			}
			break;
	}
}
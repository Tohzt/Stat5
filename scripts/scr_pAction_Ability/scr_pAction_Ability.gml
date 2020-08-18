///@func scr_pAction_Ability()
///@desc Handle Player Abilities

skill_cooldown = max(skill_cooldown - 1, 0);

if (mp >= skill_cost
&&	skill_cooldown <= 0) 
{
	if (rShift) {
		switch (skill_current) {
			case SKILLS.FIREBALL:
				scr_Ab_Projectile();
				break;
			case SKILLS.ICEBALL:
				scr_Ab_Projectile();
				break;
			case SKILLS.WALL:
				if (is_aiming) {
					scr_Ab_Shield(3, 32, 120);
				}
				else show_debug_message("MUST BE AIMING!")
				break;
			case SKILLS.PIT:
				if (true){//is_aiming) {
					scr_Ab_Pit(1, 32, 120);
				}
				else show_debug_message("MUST BE AIMING!")
				break;
		}
	}
}
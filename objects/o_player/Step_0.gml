event_inherited();
stat_mngr();
list_weapons();
cooldown_time -= 1
if (!global.gamepaused) and (!global.upgrade_menu)
{

	switch(o_player.state)
	{
		case PLAYERSTATE.AIRBORNE : playerstate_airborne(); break;
		case PLAYERSTATE.FREE : playerstate_free(); break;
		case PLAYERSTATE.SHADOWFREE : playerstate_shadowfree(); break;
		case PLAYERSTATE.CLIMB : playerstate_climb(); break;
		case PLAYERSTATE.DODGE : playerstate_dodge(); break;
		case PLAYERSTATE.DODGE2 : playerstate_dodge2(); break;
		case PLAYERSTATE.STANCE : playerstate_stance(); break;
		case PLAYERSTATE.HIT : playerstate_hit(s_RavenStun, PLAYERSTATE.FREE); break;
		case PLAYERSTATE.COMBO_1 : playerstate_combo_1(w_main, w_main.atk1); break;
		case PLAYERSTATE.COMBO_2 : playerstate_combo_1(w_main, w_main.atk2); break;
		case PLAYERSTATE.COMBO_3 : playerstate_combo_1(w_main, w_main.atk3); break;
		case PLAYERSTATE.COMBO_4 : playerstate_combo_1(w_main, w_main.atk4); break;
		case PLAYERSTATE.COMBO_5 : playerstate_combo_1(w_main, w_main.atk5); break;
		
		case PLAYERSTATE.HEAVY_1 : playerstate_combo_2(w_heavy, w_heavy.atk1); break;
		case PLAYERSTATE.HEAVY_2 : playerstate_combo_2(w_heavy, w_heavy.atk2); break;
		case PLAYERSTATE.HEAVY_3 : playerstate_combo_2(w_heavy, w_heavy.atk3); break;
		
		case PLAYERSTATE.VINE_1  : playerstate_combo_2(w_vine, w_vine.atk1); break;
		case PLAYERSTATE.VINE_2  : playerstate_combo_2(w_vine, w_vine.atk2); break;
		case PLAYERSTATE.VINE_3  : playerstate_combo_2(w_vine, w_vine.atk3); break;
		
		case PLAYERSTATE.FOLLOW_1 : playerstate_combo_5(w_main_fl, w_main_fl.atk1); break;
		
		case PLAYERSTATE.DARK_1 : playerstate_combo_4(w_dark, w_dark.atk1); break;
		case PLAYERSTATE.DARK_2 : playerstate_combo_4(w_dark, w_dark.atk2); break;
		case PLAYERSTATE.DARK_3 : playerstate_combo_4(w_dark, w_dark.atk3); break;
		case PLAYERSTATE.DARK_4 : playerstate_combo_4(w_dark, w_dark.atk4); break;
		
		case PLAYERSTATE.BURST_1 : playerstate_combo_4(w_burst, w_burst.atk1); break;
		case PLAYERSTATE.BURST_2 : playerstate_combo_4(w_burst, w_burst.atk2); break;
		
		case PLAYERSTATE.SPIKE_1 : playerstate_combo_4(w_spike, w_spike.atk1); break;
		
		case PLAYERSTATE.SHOT_1 : playerstate_projectile_1(); break;
		
		case PLAYERSTATE.DASH_1 : playerstate_combo_4(w_dash, w_dash.atk1); break;
		case PLAYERSTATE.DASH_2 : playerstate_combo_4(w_dash, w_dash.atk2); break;
		
		case PLAYERSTATE.STAB_1 : playerstate_combo_4(w_stab, w_stab.atk1); break;
		case PLAYERSTATE.STAB_2 : playerstate_combo_4(w_stab, w_stab.atk2); break;
		case PLAYERSTATE.STAB_3 : playerstate_combo_4(w_stab, w_stab.atk3); break;
		case PLAYERSTATE.STAB_4 : playerstate_combo_4(w_stab, w_stab.atk4); break;
		//case PLAYERSTATE.SMASH_1 : playerstate_combo_4(w_smash, w_smash.atk1); break;
		
		case PLAYERSTATE.PARRY : playerstate_combo_3(w_parry, w_parry.atk1); break;
		//case PLAYERSTATE.PARRIED : playerstate_parried(); break;
		case PLAYERSTATE.JUMP : playerstate_jump(); break;
		case PLAYERSTATE.OPEN : playerstate_open(); break;
		case PLAYERSTATE.LOCKED : playerstate_locked() break;
		case PLAYERSTATE.DEAD : playerstate_dead() break;
	}
}
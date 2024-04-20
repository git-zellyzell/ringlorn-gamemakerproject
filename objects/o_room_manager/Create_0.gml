current_room = 0;
room_struct = 0;
room_objective = 0;
targets_found = 0;
room_target = 0;
room_complete = false;
divider = " / ";
enemies_destroyed = 0;
objective_complete = false;
next_room = 0;
global.skill_menu = false


//SKILL STUFF.START-------
all_skills =
[
global.conservation,
global.efficient_tech,
global.natures_grace,
global.photosynthesis,
global.one_more,
global.power_flush,
global.rec_energy,
global.cond_health,
global.cond_energy,
global.cond_magic,
global.cond_items,
global.active_med,
global.arc_synergy,
global.arc_trans,
global.chip_away,
global.mana_pool,
global.sniper,
global.dancing_shadows,
global.edge_retention,
global.expert_timing,
global.lucky_strike,
global.perfect_shadows,
global.razors_edge,
global.blood_sacrifice,
global.cheap_shot,
global.crumble,
global.desperation,
global.easy_target,
global.focused_senses,
global.risk_reward,
global.snare,
]


card_slot[0]= 
{
	needs_cards : true,
	my_struct : 0,
	my_sprite : 0,
	my_name : 0
}

card_slot[1] = 
{
	needs_cards : true,
	my_struct : 0,
	my_sprite : 0,
	my_name : 0
}

card_slot[2] = 
{
	needs_cards : true,
	my_struct : 0,
	my_sprite : 0,
	my_name : 0
}

selected_card = 1;
//SKILL STUFF.END----------
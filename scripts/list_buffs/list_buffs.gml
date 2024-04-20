//bear skills
global.conservation = new buffs("Conservation", false, s_b_conservation, true); //heavy attacks don't use energy if the attack doesn't hit
global.efficient_tech = new buffs("Efficient Technique", false, s_b_efficienttechnique, true); //attacks generate more energy
global.natures_grace = new buffs("Nature's Grace", false, s_b_naturesgrace, true); //gain 1 leaf per attack landed. while you have 3 leaves negate the damage of 1 attack erasing all leaves. on the 4th landed attack lose all leaves.
global.one_more = new buffs("One More Time", false, s_b_onemoretime, true); //successive heavy attacks deal more damage
global.photosynthesis = new buffs("Photosynthesis", false, s_b_photosynthesis, true); //generate energy over time
global.power_flush = new buffs("Power Flush", false, s_b_powerfulsh, true); //sometimes heavy attacks that hit don't cost energy
global.rec_energy = new buffs("Reciprocating Energy", false, s_b_reciprocatingenergy, true); //heavy attacks refund energy when they kill an enemy

//conditioning skills
global.cond_health = new buffs("Health Conditioning", false, s_c_healthcond, true); //gain additional health
global.cond_energy = new buffs("Energy Conditioning", false, s_c_energycond, true); //gain additional energy
global.cond_magic = new buffs("Magic Conditioning", false, s_c_magiccond, true); //gain additional magic
global.cond_items = new buffs("Item Conditioning", false, s_c_itemcond, true); //items are more effective
if instance_exists(o_player)
{
	if global.cond_health.active = true
	{
		o_player.max_hp += 25;
	}
	if global.cond_energy.active = true
	{
		o_player.max_energy += 10;
	}
	if global.cond_magic
	{
		o_player.max_mp += 25;
	}
}

//owl skills
global.active_med = new buffs("Active Meditation", false, s_o_activemeditation, true); // magic generates over time
global.arc_synergy = new buffs("Arcane Synergy", false, s_o_arcanesynergy, true); //while at maximum mana, attack and movement speed is increased.
global.arc_trans = new buffs("Arcane Transmission", false, s_o_arcanetransmission, true); //perfectly timed light attacks generate more mana
global.chip_away = new buffs("Chip Away", false, s_o_chipaway, true); //non-charged magic shots deal 1% ore damage with each hit. missed shots return this bonus to 0%.
global.mana_pool = new buffs("Mana Pool", false, s_o_manapool, true); //chance for attacks to consume no mana
global.sniper = new buffs("Sniper", false, s_o_sniper, true); //attacks can generate magic bolts. these bolts fly faster and hit harder than standard magic shots

//raven skills
global.dancing_shadows = new buffs("Dancing Shadows", false, s_r_dancingshadows, true); //enemies under status effects take damage over time
global.edge_retention = new buffs("Edge Retention", false, s_r_edgeretention, true); //light attacks use less sharpness
global.expert_timing = new buffs("Expert Timing", false, s_r_experttiming, true); //perfectly timed light attacks deal more damage
global.lucky_strike = new buffs("Lucky Strike", false, s_r_luckystrike, true); //sometimes light attacks won't use sharpness
global.perfect_shadows = new buffs("Perfect Shadows", false, s_r_perfectshadows, true); //Sometimes perfectly timed attacks will spawn bonus shadow strikes
global.razors_edge = new buffs("Razor's Edge", false, s_r_razorsedge, true); //the first strike with full sharpness deals more damage

//wolf skills
global.blood_sacrifice = new buffs("Blood Sacrifice", false, s_w_bloodsacrifice, true); //use health to castspells while you're out of mana. spells cast this way deal more damage
global.cheap_shot = new buffs("Cheap Shot", false, s_w_cheapshot, true); //parry counter attacks deal more damage
global.crumble = new buffs("Crumble", false, s_w_crumble, true); //enemies with full health take more damage
global.desperation = new buffs("Desperation", false, s_w_desperation, true); //deal more damage when your health is low
global.easy_target = new buffs("Easy Target", false, s_w_easytarget, true); //enemies with status effects take more damage
global.focused_senses = new buffs("Focused Senses", false, s_w_focusedsenses, true); //slow time after perfect dodging
global.risk_reward = new buffs("Risk & Reward", false, s_w_riskreward, true); //you deal more damage after a perfect dodge
global.snare = new buffs("Snare", false, s_w_snare, true); //Status effects last longer

//phoenix abilities
//flame_give_life //revive
//flame_preserve //temporary invincibility
//flame_consume //flame pillars
//flame_vanquish //temporary bonus damage
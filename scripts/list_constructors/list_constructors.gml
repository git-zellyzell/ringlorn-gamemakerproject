function weapon1(name, atkspeed, knockback, dmg_calc, dmg_type, combo1) constructor
{
	my_name = name;
	my_spd = atkspeed;
	_kb = knockback;
	my_dmg = dmg_calc;
	my_dmgtype = dmg_type;
	atk1 = combo1;
}

function weapon2(name, atkspeed, knockback, dmg_calc, dmg_type, combo1, combo2) constructor
{
	my_name = name;
	my_spd = atkspeed;
	_kb = knockback;
	my_dmg = dmg_calc;
	my_dmgtype = dmg_type;
	atk1 = combo1;
	atk2 = combo2;

}

function weapon3(name, atkspeed, knockback, dmg_calc, dmg_type, combo1, combo2, combo3) constructor
{
	my_name = name;
	my_spd = atkspeed;
	_kb = knockback;
	my_dmg = dmg_calc;
	my_dmgtype = dmg_type;
	atk1 = combo1;
	atk2 = combo2;
	atk3 = combo3;
}

function weapon4(name, atkspeed, knockback, dmg_calc, dmg_type, combo1, combo2, combo3, combo4) constructor
{
	my_name = name;
	my_spd = atkspeed;
	_kb = knockback;
	my_dmg = dmg_calc;
	my_dmgtype = dmg_type;
	atk1 = combo1;
	atk2 = combo2;
	atk3 = combo3;
	atk4 = combo4;
}

function weapon5(name, atkspeed, knockback, dmg_calc, dmg_type, combo1, combo2, combo3, combo4, combo5) constructor
{
	my_name = name;
	my_spd = atkspeed;
	_kb = knockback;
	my_dmg = dmg_calc;
	my_dmgtype = dmg_type;
	atk1 = combo1;
	atk2 = combo2;
	atk3 = combo3;
	atk4 = combo4;
	atk5 = combo5;
	
	
}

function perf_combo(animation, hitbox, starting_frame, life, fr1, fr2, fl1, fl2, nextcombo, perfcombo, magiccombo, heavycombo) constructor
{
	_anim	= animation;
	_hb		= hitbox;
	_start	= starting_frame;
	_life	= life;
	_fr1	= fr1;
	_fr2	= fr2;
	_fl1	= fl1;
	_fl2	= fl2;
	_next	= nextcombo;
	_flnext = perfcombo;
	_mcombo = magiccombo;
	_hcombo = heavycombo;
}

function combo(animation, hitbox, starting_frame, life, fr1, fr2, nextcombo, magiccombo, heavycombo) constructor
{
	_anim	= animation;
	_hb		= hitbox;
	_start	= starting_frame;
	_life	= life;
	_fr1	= fr1;
	_fr2	= fr2;
	_next	= nextcombo;
	_mcombo = magiccombo;
	_hcombo = heavycombo;

}

function item(name, description, maximum_quantity, quantity, icon, pickup, effect) constructor
{
	my_name = name;
	desc = description;
	max_quant = maximum_quantity;
	quant = quantity;
	my_sprite = icon;
	my_pickup = pickup;
	item_effect = effect;
}

function bullet(bullet_sprite, anim_speed, knockback_amount, bullet_life, bullet_damage, damage_type, bullet_speed) constructor
{
	my_sprite = bullet_sprite;
	ispeed = anim_speed;
	knockback = knockback_amount;
	lifespan = bullet_life
	blt_dmg = bullet_damage;
	dmg_type = damage_type;
	blt_spd = bullet_speed;
}

function door(name, door_sprite, reward) constructor
{
	my_name = name;
	my_sprite = door_sprite;
	reward_type = reward;
}

function buffs(name, unlocked, my_sprite, available) constructor
{
	my_name = name;
	active = unlocked;
	my_card = my_sprite;
	_available = available;
}

function spell(name, unlocked, in_slot, cost, usage) constructor
{
	my_name = name;
	available = unlocked;
	selected = in_slot;
	my_cost = cost;
	to_use = usage;
}

function enemy(name, my_default_state, melee_distance, ranged_distance, enemy_speed,
				combat_speed, wander_distance, travelled_distance, escape_dist,
				knockback, knockback_resist, damage_modifier, armor_class, stagger_amount,
				alarm_timer, wait_duration) constructor
{
	my_name = name;
	state_default = my_default_state;
	melee_dist = melee_distance;
	range_dist = ranged_distance;
	my_speed = enemy_speed;
	chase_speed = combat_speed;
	wander_dist = wander_distance;
	travel_dist = travelled_distance;
	escape_dist = escape_dist;
	kb = knockback;
	kb_resist = knockback_resist;
	dmg_mod = damage_modifier;
	armor = armor_class;
	max_stagger = stagger_amount;
	time_passed = alarm_timer;
	wait_time = wait_duration;
}

function roomtype(name, room_objective, objective_object1, target_amount_1, objective_object2, target_amount_2) constructor
{
	my_name = name;
	room_obj = room_objective;
	obv_obj_1 = objective_object1;
	obj_tgt_1 = target_amount_1;
	obv_obj_2 = objective_object2;
	obj_tgt_2 = target_amount_2;
}



















				
event_inherited();

depth = 0;
input = instance_create_layer(0,0, "l_hud", o_Input);

target_enter = 0;

energy_regen = 5;
leaf = 0;
//health and healing
max_hp = 100;
current_hp = max_hp;
max_hs = 8;
current_hs = 8;
invincible = false;
bonus_speed = 0;
//stamina points and dodging
max_dodge = 2;
current_dodge = max_dodge;
dodge_regen = .01
draw_dodge = 0;
//magic points
max_mp = 100;
current_mp = 60;
max_energy = 100;
current_energy = 0;
draw_energy = 0;
energy_charge = 0;
mp_regen = 0;
draw_mp = 0;
//movement
	//jumping
		// Variable to keep track of the number of jumps the player has made
		jump_count = 0;
		//Variable to store the time the player starts to press the jump button
		jump_start_time = 0;
		//Variable to keep track of how long the player will jump.
		jump_time = 0;
		jump_speed = -16;
		jump_duration = 0;
		maxcantjumptime = 5;
		cantjumptime = maxcantjumptime;
		






walk_speed = 10;
max_footsteptimer = 12
footstep_timer = 4;
jog_speed = walk_speed * 4;
stagger = 5;
climb_speed = 10;
stance_speed = 80;
roll_speed = 16;
dark_roll_speed = 16;
shadow_speed = 8
//kb = knockback
kb = .5;
kb_resist = 2;
knockback_speed = 2;
target_enter = 0;

cooldown_time = 0
//damage
armor = 1;
damage_modifier = 1;
heavy_damage_modifier = 1;
//light attack
max_sp = 100; 
current_sp = 100;
sp_reduction = 3;
sp_reduct1 = 3;
sp_reduct2 = 8;
sp_lvl = 0;
sp_regen = 0.02;

//charge state
max_stancetimer = 5;
stancetimer = 0;

current_xp = 700;
chip_bonus = 0;
max_revives = 1;
revives = 0;
//player state machines
state =PLAYERSTATE.FREE;
last_state = state;
enum PLAYERSTATE
{
	AIRBORNE,
	FREE,
	SHADOWFREE,
	CLIMB,
	DODGE,
	DODGE2,
	STANCE,
	HIT,
	COMBO_1,
	COMBO_2,
	COMBO_3,
	COMBO_4,
	COMBO_5,
	HEAVY_1,
	HEAVY_2,
	HEAVY_3,
	HEAVY_4,
	VINE_1,
	VINE_2,
	VINE_3,
	FOLLOW_1, 
	FOLLOW_2, 
	FOLLOW_3,
	FOLLOW_4,
	FOLLOW_5,
	PARRY,
	PARRIED,
	CHARGE_MAGIC,
	JUMP,
	DARK_ULT,
	DARK_1,
	DARK_2,
	DARK_3,
	DARK_4,
	BURST_1,
	BURST_2,
	SPIKE_1,
	SHOT_1,
	DASH_1,
	DASH_2,
	STAB_1,
	STAB_2,
	STAB_3,
	STAB_4,
	SMASH_1,
	OPEN,
	LOCKED,
	DEAD
}


current_spell = 2;
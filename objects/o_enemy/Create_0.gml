//BASICS
depth = 1;
xspeed = 0;
yspeed = 0;
grav = 1;
flash = 0;

//STATS
//unique to object
max_hp = 1
current_hp = max_hp;

//MOVEMENT
//unique to object
chase_speed = 3;

//COMBAT
aggro_check = 0;
aggro_check_duration = 100;
escape_dist = 400;
//unique to object - combat
ready_dist = 300;
aggro_dist = 150;
melee_dist = 40;
kb_resist = 0;
armor = 1;



//ANIMATIONS - array?
my_anim = 1;
my_index = 0;
//unique to object
my_sprite_ready = 0;
my_sprite_chase = 0;



enum ENEMYSTATE
{
	FREE,
	WANDER,
	CHASE,
	ATTACK,
	COMBO_1,
	COMBO_2,
	READY,
	PARRIED
}
my_default_state = ENEMYSTATE.FREE;
enemystate = my_default_state;	

//CONSTRUCTING THE ENEMY
needs_stats = true;
my_struct = 0;
my_weapon = 0;
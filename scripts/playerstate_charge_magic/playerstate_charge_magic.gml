// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerstate_charge_magic(){
xspeed= 0;
regen_mp = .25;
current_hp -=.05;

if current_mp < 0
	{
		current_mp = 0;
	}
if current_mp > max_mp
	{
		current_mp = max_mp;
	}
	

if not input.charge_mp || current_mp = max_mp
	{
		regen_mp = .02;
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
	}

}
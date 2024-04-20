// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerstate_airborne(){
	
	set_state_sprite(s_cpjumpup, 0, 4);
	
	if place_meeting(x, y + yspeed, o_wall)
	{
		
		state = PLAYERSTATE.FREE;
		set_state_sprite(s_Ravenidle, .6, 1);
		
		
		
	}
}
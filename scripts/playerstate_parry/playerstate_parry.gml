// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerstate_parry()
{
	xspeed = 0;

	set_state_sprite(s_parry, 1, 0)
	if animation_hit_frame(0)
	{
		create_hitbox(weapon_struct, combo_num, x, y, self, o_parrybox, image_xscale);
	}

	if (animation_end())
	{
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
	}

}
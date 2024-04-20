function playerstate_dead()
{
	set_state_sprite(s_Ravendead, 1, 0)
	if !instance_exists(o_fade)
	{
		fade_to_room(rm_deathmenu, 60, c_black)
	}
}
function enemystate_combo_1(weapon_struct, combo_num)
{
		var direction_to_player = point_direction(x,y, o_player.x, o_player.y);
		var distance_to_player = point_distance(x,y, o_player.x, o_player.y);
		var pd = round(direction_to_player/45);
		pd = pd mod 8;
	set_state_sprite(combo_num._anim, weapon_struct.my_spd, 0);
	
	if animation_hit_frame(combo_num._start)
	{
		xspeed = 0;
		create_hitbox(weapon_struct, combo_num, x, y, self, o_enemyhitbox, image_xscale);
	}


	if (animation_end())  and distance_to_player <= melee_dist
	{
			enemystate = combo_num._next;
	} else if (animation_end()) and distance_to_player > melee_dist
	{
		enemystate = ENEMYSTATE.FREE;
	}
}
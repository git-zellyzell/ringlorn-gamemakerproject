//GET LIST OF ENEMY TYPES
list_enemies();

if needs_stats = true
{
	if room_get_name(room) = "rm_trainingforest"
	{
		my_struct = target_dummy;
		sprite_index = s_dummy;
		//STATS
		//unique to object
		current_hp = my_struct.max_hp;
		
		//MOVEMENT
		chase_speed = my_struct.chase_speed;
		//COMBAT
		ready_dist = my_struct.ready_dist;
		aggro_dist = my_struct.aggro_dist;
		melee_dist = my_struct.melee_dist;
		//ANIMATIONS
		my_sprite_ready = my_struct.my_sprite_ready;
		my_sprite_chase = my_struct.my_sprite_chase;
		
		my_weapon = my_struct.my_weapon;
	}
	if room_get_name(room) = "rm_trainingforest2"
	{
		my_struct = enemy_trainer
		sprite_index = s_trainer_idle;
		//STATS
		//unique to object
		current_hp = my_struct.max_hp;
		
		//MOVEMENT
		chase_speed = my_struct.chase_speed;
		//COMBAT
		ready_dist = my_struct.ready_dist;
		aggro_dist = my_struct.aggro_dist;
		melee_dist = my_struct.melee_dist;
		//ANIMATIONS
		my_sprite_ready = my_struct.my_sprite_ready;
		my_sprite_chase = my_struct.my_sprite_chase;
		
		my_weapon = my_struct.my_weapon;
	}
	needs_stats = false;
}
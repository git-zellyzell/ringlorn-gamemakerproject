function list_enemies()
{
	list_enemyweapons()
	
	enemy_trainer = 
	{
		//STATS
		//unique to object
		my_name : "Enemy Trainer",
		max_hp : 25,

		//MOVEMENT
		chase_speed : 6,
		//COMBAT
		ready_dist : 400,
		aggro_dist : 300,
		melee_dist : 50,
		//ANIMATIONS
		my_sprite_ready : s_trainer_idle,
		my_sprite_chase : s_trainer_run,
		my_room_value : 10,
		
		my_weapon : w_trainer
		
	}
	
	target_dummy = 
	{
		//STATS
		//unique to object
		my_name : "Target Dummy",
		max_hp : 25,

		//MOVEMENT
		chase_speed : 0,
		//COMBAT
		ready_dist : 0,
		aggro_dist : 0,
		melee_dist : 0,
		//ANIMATIONS
		my_sprite_ready : s_dummy,
		my_sprite_chase : s_dummy,
		
		my_weapon : w_dummy
	}
}
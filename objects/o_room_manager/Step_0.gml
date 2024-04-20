current_room = room_get_name(room);



if current_room = "rm_trainingforest"
{
		next_room = rm_trainingforest2;
		room_objective = "Destroy all Targets  ";
		room_target = 7;
		var objective_enemy = "Target Dummy";
		var size = ds_list_size(global.destroyed_enemies);
		targets_found = 0;
		for (var i = 0; i < size; i++)
		{
			if (ds_list_find_value(global.destroyed_enemies, i) == objective_enemy)
			{
				targets_found++
			}
		}
					
		if targets_found >= room_target
		{
			room_complete = true
		}
}

	if current_room = "rm_trainingforest2"
	{
		next_room = rm_trainingforest;
		room_objective = "Destroy all Targets  ";
		room_target = 7;
		var objective_enemy = "Enemy Trainer";
		var size = ds_list_size(global.destroyed_enemies);
		targets_found = 0;
		for (var i = 0; i < size; i++)
		{
			if (ds_list_find_value(global.destroyed_enemies, i) == objective_enemy)
			{
				targets_found++
			}
		}
		if targets_found >= room_target
		{
			room_complete = true
		}	
	
}

if room_complete = true
{
	global.skill_menu = true
}

if global.skill_menu and !global.gamepaused
{
	if o_player.input.menuright and !instance_exists(o_text)
		{ 
			selected_card++;
			if (selected_card >= (array_length(card_slot))) selected_card = 0;
		}
	
		if o_player.input.menuleft and !instance_exists(o_text)
		{
			selected_card--;
			if (selected_card < 0) selected_card = (array_length(card_slot) - 1);
		}
		
		if o_player.input.enter
		{
			card_slot[selected_card].my_struct.active = true;
			room_goto(next_room);
		}
}
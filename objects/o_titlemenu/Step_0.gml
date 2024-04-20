if keyboard_check_pressed(vk_down)
	{
		menu_option_selected++;
		if (menu_option_selected >= array_length(menu_options)) menu_option_selected = 0;
	}
	
	if keyboard_check_pressed(vk_up)
	{
		menu_option_selected--;
		if (menu_option_selected < 0) menu_option_selected = array_length(menu_options) - 1
	}
	
	if keyboard_check_pressed(ord("Z"))
	{
		switch (menu_option_selected)
		{
			case 0 : //new game
			{
				room_goto(rm_trainingforest)
			}break;
			case 1 : //continue
			{
				room_goto(rm_00)
			}break;
			case 2 : //options
			{
				with (o_game) instance_destroy();
				game_restart();
			}break;
			case 3 : //quit
			{
				game_end();
			}break;
		}
	}


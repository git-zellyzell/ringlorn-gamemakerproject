if (global.gamepaused) 
{
	if o_player.input.menudown
	{
		pause_option_selected++;
		if (pause_option_selected >= array_length(pause_options)) pause_option_selected = 0;
	}
	
	if o_player.input.menuup
	{
		pause_option_selected--;
		if (pause_option_selected < 0) pause_option_selected = array_length(pause_options) - 1
	}
	
	if o_player.input.activate
	{
		switch (pause_option_selected)
		{
			case 0 : //continue
			{
				global.gamepaused = false;
				with (all)
				{
					gamepausedimagespeed = image_speed;
					image_speed = 0;
				}
				instance_destroy(o_pausemenu);
			}break;
			case 1 : //save & quit
			{
				with (o_game) instance_destroy();
				game_restart();
			}break;
			case 2 : //save & quit to desktop
			{
				game_end();
			}break;
		}
	}
}

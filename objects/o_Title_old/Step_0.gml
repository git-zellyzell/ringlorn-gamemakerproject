/// control menu

menu_x += (menu_x_target - menu_x) / menu_speed;


if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 250;
		menu_committed = menu_cursor;
		menu_control = false;
		
	}
}

if (menu_x > gui_width + 150) and (menu_committed != - 1)
{
	switch (menu_committed)
	{
		case 2: default: room_goto(rm_trainingforest); break;
		case 0: game_end(); break;
	}
}
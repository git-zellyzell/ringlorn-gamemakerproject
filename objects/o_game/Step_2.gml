/// @desc pause game


if (keyboard_check_pressed(vk_end)) and (!global.gamepaused)
{
	global.upgrade_menu = !global.upgrade_menu;
	if (global.upgrade_menu)
	{
		with (all)
		{
			gamepausedimagespeed = image_speed;
			image_speed = 0;
		}
		if o_player.current_hp <=0
		{
			if (keyboard_check_pressed(ord("Y")))
			{
				global.upgrade_menu = false;
				room_goto(rm_00)
			}
		}
	}
	else
	{
		with (all)
		{
			image_speed = gamepausedimagespeed;
		}
	}
}
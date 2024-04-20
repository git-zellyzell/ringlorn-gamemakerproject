if instance_exists(o_player)
{
	if (keyboard_check_pressed(vk_escape))
	{
		global.gamepaused = !global.gamepaused;
		if (global.gamepaused)
		{
			instance_create_depth(0, 0, -1000, o_pausemenu)
			with (all)
			{
				gamepausedimagespeed = image_speed;
				image_speed = 0;
			}
		}
		else
		{
			instance_destroy(o_pausemenu)
			with (all)
			{
				image_speed = o_game.gamepausedimagespeed;
			}
		}
	}
}
if o_game.input.openMenu and !global.skill_menu
{
	global.spellmenu = !global.spellmenu;
	if (global.spellmenu)
	{
		with (all)
		{
			gamepausedimagespeed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all)
		{
			image_speed = o_game.gamepausedimagespeed;
		}
	}
}

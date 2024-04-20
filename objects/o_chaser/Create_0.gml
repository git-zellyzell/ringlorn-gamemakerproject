xspeed = random_range(-3, 3)
yspeed = random_range(-1, -3)
item_struct = 0;
needs_initialization = true;
chase_player = false;
alarm[0] = room_speed * 0.5;
c_kinblood_droplet = 
{
	my_sprite : s_ui_kinblood,
	value : 1
}

c_hardlight_dust =
{
	my_sprite : s_ui_money,
	value : 1
}

currency_list = [c_kinblood_droplet, c_hardlight_dust]
var success = false;

if item_struct = currency_list[0]
{
	global.player_experience += 1;
	success = true;
}

	
if item_struct = currency_list[1]
{
	global.player_money += 1;   
	success = true;
}
	


if success = true
instance_destroy(); 
function charge_reduc() 
{
	if object_exists(o_player)
	{
		//enforce damage
		if o_player.input.heavyattack and o_player.energy_charge < 1
		{
			o_player.damage_modifier = 0.25;
		} else if (o_player.input.heavyattack) o_player.damage_modifier = 1;
	
		return 10;
	}
}

function sharp_reduc() 
{
	if object_exists(o_player)
	{
	#region//decreasing sharpness

			if o_player.sp_lvl = 0
			{
				damage_modifier = 1.15;

				if o_player.current_sp < 90 and o_player.current_sp >= 80
				{
					sp_lvl = 1;
				}
				if o_player.current_sp < 80 and o_player.current_sp >= 70
				{
					sp_lvl = 2;
				}
				if o_player.current_sp < 70 and o_player.current_sp >= 60
				{
					sp_lvl = 3;
				}
				if o_player.current_sp < 60
				{
					sp_lvl = 4;
				}
			}
	
	
		if o_player.sp_lvl = 1
		{
			if o_player.current_sp < 80 and o_player.current_sp >= 70
			{
				sp_lvl = 2;
			}
			if o_player.current_sp < 70 and o_player.current_sp >= 60
			{
				sp_lvl = 3;
			}
			if o_player.current_sp < 60
			{
				sp_lvl = 4;
			}
		}
	
		if o_player.sp_lvl = 2
		{
			if o_player.current_sp < 70 and o_player.current_sp >= 60
			{
				sp_lvl = 3;
			}
			if o_player.current_sp < 60
			{
				sp_lvl = 4;
			}
		}
	
		if o_player.sp_lvl = 3
		{
			if o_player.current_sp < 60
			{
				sp_lvl = 4;
			}
		}	
	#endregion
	#region//increasing sharpness
		if o_player.sp_lvl = 1
		{
			if o_player.current_sp >= 100
			{
				o_player.sp_lvl = 0
				damage_modifier = 1.15
			}
		}
	
		if o_player.sp_lvl = 2
		{
			if o_player.current_sp >= 90
			{
				o_player.sp_lvl = 1
			}
			if o_player.current_sp >= 100
			{
				o_player.sp_lvl = 0
				damage_modifier = 1.15
			}
		}
	
		if o_player.sp_lvl = 3
		{
			if o_player.current_sp >= 80
			{
				o_player.sp_lvl = 2
			}
			if o_player.current_sp >= 90
			{
				o_player.sp_lvl = 1
			}
			if o_player.current_sp >= 100
			{
				o_player.sp_lvl = 0
				damage_modifier = 1.15
			}
		}

		if o_player.sp_lvl = 4 
		{
			if o_player.current_sp >= 70
			{
				o_player.sp_lvl = 3
			}
			if o_player.current_sp >= 80
			{
				o_player.sp_lvl = 2
			}
			if o_player.current_sp >= 90
			{
				o_player.sp_lvl = 1
			}
			if o_player.current_sp >= 100
			{
				o_player.sp_lvl = 0
				damage_modifier = 1.15
			}
		}
	#endregion
	#region//increasing energy charges
		with o_player
		{
			if energy_charge = 0
			{
				if current_energy >= 25
				{
					energy_charge = 1;
				}
				if current_energy >= 50
				{
					energy_charge = 2;
				}
				if current_energy >= 75
				{
					energy_charge = 3;
				}		
				if current_energy >= 100
				{
					energy_charge = 4;
				}
			}
			if energy_charge = 1
			{
				if current_energy >= 50
				{
					energy_charge = 2;
				}
				if current_energy >= 75
				{
					energy_charge = 3;
				}		
				if current_energy >= 100
				{
					energy_charge = 4;
				}			
			}
			if energy_charge = 2
			{
				if current_energy >= 75
				{
					energy_charge = 3;
				}		
				if current_energy >= 100
				{
					energy_charge = 4;
				}	
			}
			if energy_charge = 3
			{
				if current_energy >= 100
				{
					energy_charge = 4;
				}	
			}
			if energy_charge = 4
			{
				if current_energy >= 75 and current_energy < 100
				{
					energy_charge = 3
				}
				if current_energy >= 50 and current_energy < 75
				{
					energy_charge = 2
				}
				if current_energy >= 25 and current_energy < 50
				{
					energy_charge = 1
				}
				if current_energy < 25
				{
					energy_charge = 0
				}				
			}
			if energy_charge = 3
			{
				if current_energy >= 50 and current_energy < 75
				{
					energy_charge = 2
				}
				if current_energy >= 25 and current_energy < 50
				{
					energy_charge = 1
				}
				if current_energy < 25
				{
					energy_charge = 0
				}			
			}
			if energy_charge = 2
			{
				if current_energy >= 25 and current_energy < 50
				{
					energy_charge = 1
				}
				if current_energy < 25
				{
					energy_charge = 0
				}	
			}
			if energy_charge = 1
			{
				if current_energy < 25
				{
					energy_charge = 0
				}				
			}
		}
	#endregion
	#region//enforcing limits
		if o_player.current_sp <= 0
		{
			o_player.current_sp = 0;
		}
		if o_player.current_sp >= o_player.max_sp
		{
			o_player.current_sp = o_player.max_sp;	
		} else
		{
			o_player.current_sp += o_player.sp_regen;
		}
		if o_player.current_energy <= 0
		{
			o_player.current_energy = 0;
		}
		if o_player.current_energy >= o_player.max_energy
		{
			o_player.current_energy = o_player.max_energy;
		}
	#endregion
		return 3
	}
}
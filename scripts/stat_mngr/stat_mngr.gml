// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stat_mngr()
{
	if current_dodge < 0
	{
		current_dodge = 0;
	}

	if current_dodge > max_dodge
	{
		current_dodge = max_dodge;	
	} else
		{
			//sharpness regen over time
			current_dodge += (dodge_regen);
		}

	if current_energy > max_energy
	{
		current_energy = max_energy;
	}else if current_energy < max_energy and global.photosynthesis.active = true
	{
		current_energy += 1;
	}
	if current_energy <= 0
	{
		current_energy = 0;
	}
	
	if energy_charge <= 0
	{
		energy_charge = 0;
	}
	
	if energy_charge >= 4
	{
		energy_charge = 4;
	}
	
	if current_hp > max_hp
	{
		current_hp = max_hp;
	}
	
	if current_hs >= max_hs
	{
		current_hs = max_hs
	}
	
	if current_dodge > max_dodge
	{
		current_dodge = max_dodge;
	}
	
	if current_mp > max_mp
	{
		current_mp = max_mp;
	}else if (current_mp < max_mp) and (global.active_med.active = true)
	{
		mp_regen = 0.01;
		current_mp += mp_regen;
	}
}
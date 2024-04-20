///@arg damage output
///@arg damage type
function enemyhit(argument0, argument1) 
{
	
	var _damage = argument0;
	var _type = argument1;
	enum DAMAGETYPE
	{
		NONE,
		SHARP,
		HEAVY,
		DARK,
		DARK_SHOT,
		FIRE,
		ENEMY
	}

	if _type == DAMAGETYPE.SHARP
	{
		with (o_player)
		{
			//lucky strike
			if global.lucky_strike.active = true
			{
				sharp_luck = irandom(100)
				if (sharp_luck <= 15) o_player.current_sp = o_player.current_sp;
				else if (sharp_luck > 15) o_player.current_sp -= o_player.sp_reduction;
			}
			//arcane transmission
			if (global.arc_trans.active = true) current_mp += .25;
			//crumble
			if (global.crumble.active = true)
			{
				if (other.current_hp >= other.max_hp) other.current_hp -= 5;
			}
			
			current_energy += energy_regen;
			if global.efficient_tech.active = true
			{
				current_energy +=energy_regen *.2;
			}
			current_sp -= sp_reduction
			
		}
	}

	if _type == DAMAGETYPE.HEAVY
	{
		if (global.conservation.active = true)
		{
			if (o_player.current_energy >= 25) o_player.current_energy -= 25;
		}
		//reciprocating energy
		if (global.rec_energy.active = true)
		{
			rec_chance = irandom(100)
			if (rec_chance <= 50) o_player.current_energy += 10;
		}
		
	}
	
	if _type == DAMAGETYPE.DARK
	{
		with (o_player)
		{
			current_mp -= 1;
			//recharge
			if (global.power_flush.active = true) o_player.current_energy += 2;
		}
	}
	
	if _type == DAMAGETYPE.DARK_SHOT
	{
		with (o_player)
		{
			//chip away
			if (global.chip_away.active = true) chip_bonus += .01;
			//recharge
			if (global.power_flush.active = true) o_player.current_energy += 1;
		}
	}
	
	if _type == DAMAGETYPE.ENEMY
	{
		with o_player
		{
			if current_hs >= 1
			{
				if global.natures_grace.active = true and o_player.leaf >= 3
				{
					if o_player.leaf < 4
					{
						current_hs -= _damage;
					}
				}
			}
			else
			{
				current_hp -= 200;
			}
		}
	}
	current_hp -= _damage;
	if global.natures_grace.active = true
	{
		o_player.leaf += 1;
		if o_player.leaf >= 4
		{
			o_player.leaf = 0;
		}
	}
	
}

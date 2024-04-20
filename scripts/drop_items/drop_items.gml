///@desc drop items
///@arg drop_chance
function drop_items(argument0)
{
	repeat (coins_to_drop)
	{
		instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "l_entities", o_chaser)
	}
	
	repeat (items_to_drop)
	{
		var drop_chance = argument0;
		//out of 100 what is the chance item will drop
		var loot_chance = random(100);
		//if random number is greater than enemy's drop chance...
		if (loot_chance >= drop_chance)
		{
			//drop the desired number of items
			instance_create_layer(x + random_range(-30, 30), y + random_range(-60, 4), "l_entities", o_item_parent);
		}
	}
}
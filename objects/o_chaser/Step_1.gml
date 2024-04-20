var drop_me = -1;
drop_chance = irandom(100)
if (drop_chance > 1) and (drop_chance < 50) var drop_me = 1;
if (drop_chance > 50) drop_me = 0;
if (drop_me < 0) drop_me = 0;
if (needs_initialization)
{
	item_struct = currency_list[drop_me];
	sprite_index = item_struct.my_sprite;
	needs_initialization = false;
}
/// @description Insert description here
// You can write your code in this editor
var drop_me = -1;

drop_chance = irandom(100)
if (drop_chance < 33) drop_me = 0;
if (drop_chance >= 33) and (drop_chance < 66) drop_me = 1;
if (drop_chance >= 66) drop_me = 2;

if (needs_initialization)
{
	item_struct = global.a_pickups[drop_me];
	sprite_index = item_struct.my_pickup;
	needs_initialization = false;
}
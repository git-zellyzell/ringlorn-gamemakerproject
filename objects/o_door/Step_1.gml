var drop_me = -1;

drop_chance = irandom(100)
if (drop_chance < 25) drop_me = 0;
if (drop_chance >= 25) and (drop_chance < 50) drop_me = 1;
if (drop_chance >= 50) and (drop_chance < 75) drop_me = 2;
if (drop_chance >= 75) drop_me = 3;




if global.room_complete = true
{
	door_struct = global.a_doors[drop_me];
	sprite_index = door_struct.my_sprite;
	global.room_complete = false;
}
/// @description Insert description here
// You can write your code in this editor


var enemy_count = instance_number(o_enemy)
spawn_check = 50;

spawn_check--
if instance_exists(o_player) and spawn_check <= 0
{
	if enemy_count < 5
	{
		var new_x = random_range(220, room_width - 220);
		var new_y = o_player.y - 100
		instance_create_layer(new_x, new_y, "l_entities", o_enemy);
	}
}





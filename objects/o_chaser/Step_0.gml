if !instance_exists(o_player) exit;

if chase_player
{
	var px = o_player.x
	var py = o_player.y
	var dir = point_direction(x, y, px, py)
	var accel = lerp(0, 20, 0.5);
	motion_set(dir, accel * image_speed)
}


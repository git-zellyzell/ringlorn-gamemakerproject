if !instance_exists(other) exit;
var direc = point_direction(other.x, other.y, x, y)
var accel = 0.5;
motion_add(direc, accel);

// get current camera position
var cam_x = camera_get_view_x(camera);
var cam_y = camera_get_view_y(camera);
var cam_w = camera_get_view_width(camera);
var cam_h = camera_get_view_height(camera);


//set target camera position
if instance_exists(o_player)
{
	var target_x = o_player.x - (cam_w / 2);
	var target_y = o_player.y + (cam_h * 100);

	//clamp the target to room bounds
	target_x = clamp(target_x, 0, room_width - cam_w);
	target_y = clamp(target_y, 0, room_height - cam_h);

	//smoothly move the camera to the target position
	cam_x = lerp(cam_x, target_x, CAM_SMOOTH);
	cam_y = lerp(cam_y, target_y, CAM_SMOOTH);
}
//apply shake
var shake = power(shake_value, 2) * shake_power;
cam_x += random_range(-shake, shake);
cam_y += random_range(-shake, shake);
camera_set_view_angle(camera, random_range(-shake, shake) * 0.5);

//apply camera position
camera_set_view_pos(camera, cam_x, cam_y - 7);
camera_set_view_size(camera, cam_w, cam_h);


//reduce shake
if (shake_value > 0) shake_value -= 0.1;

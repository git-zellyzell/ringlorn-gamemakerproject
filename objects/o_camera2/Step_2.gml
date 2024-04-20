
// get current camera position
var cam_x = camera_get_view_x(camera);
var cam_y = camera_get_view_y(camera);
var cam_w = camera_get_view_width(camera);
var cam_h = camera_get_view_height(camera);



//apply camera position
camera_set_view_pos(camera, room_width * 0.5, room_height * 0.5);
camera_set_view_size(camera, room_width, room_height);


//reduce shake
if (shake_value > 0) shake_value -= 0.1;

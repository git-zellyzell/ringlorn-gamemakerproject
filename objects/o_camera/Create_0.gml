/// @desc set up camera

// enable views
view_enabled = true;
view_visible[0] = true;

//create camera
camera = camera_create_view(0, 0, RES_W, RES_H)
view_set_camera(0, camera)

//resize window & application surface
window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);


//center window
var display_width = display_get_width();
var display_height = display_get_height();
var window_width = RES_W * RES_SCALE;
var window_height = RES_H * RES_SCALE;

window_set_position((display_width * 0.5) - (window_width * 0.5), (display_height * 0.5) - (window_height * 0.5))

//3D camera properties
cam_dist = -2500;
cam_fov = 90;
cam_aspect = camera_get_view_width(camera) / camera_get_view_height(camera);

gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_texrepeat(true);


//camera shake
shake_power = 5;
shake_value = 0;
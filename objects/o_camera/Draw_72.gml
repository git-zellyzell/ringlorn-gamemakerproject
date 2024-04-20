/// @description Insert description here

//update 3D camera
var cam_w   = camera_get_view_width(camera);
var cam_h   = camera_get_view_height(camera);
var cam_X   = camera_get_view_x(camera) + cam_w / 2;
var cam_Y   = camera_get_view_y(camera) + cam_h / 2;

var view_matrix = matrix_build_lookat(cam_X, cam_Y, cam_dist, cam_X, cam_Y, 0, 0, 1, 0);
var proj_matrix = matrix_build_projection_perspective_fov(cam_fov, cam_aspect, 3, 30000);

camera_set_view_mat(camera, view_matrix);
camera_set_proj_mat(camera, proj_matrix);

camera_apply(camera);
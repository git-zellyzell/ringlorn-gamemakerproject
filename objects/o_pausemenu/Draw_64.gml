/// @description Insert description here
// You can write your code in this editor
draw_self();

if pause_option_selected = 0
{
	draw_sprite_ext(s_resume, 1,  -100, RES_H * .50, .30, .30, 0, c_white, 1);
}else draw_sprite_ext(s_resume, 0,  -100, RES_H * .50, .25, .20, 0, c_white, 1);

if pause_option_selected = 1
{
	draw_sprite_ext(s_restart, 1,  -100, RES_H * 1, .30, .30, 0, c_white, 1);
}else draw_sprite_ext(s_restart, 0,  -100, RES_H * 1, .25, .20, 0, c_white, 1);

if pause_option_selected = 2
{
	draw_sprite_ext(s_retire, 1,  -100, RES_H * 1.5, .30, .30, 0, c_white, 1);
}else draw_sprite_ext(s_retire, 0,  -100, RES_H * 1.5, .25, .20, 0, c_white, 1);

if pause_option_selected = 3
{
	draw_sprite_ext(s_options_2, 1,  -100, RES_H * 2, .30, .30, 0, c_white, 1);
}else draw_sprite_ext(s_options_2, 0,  -100, RES_H * 2, .25, .20, 0, c_white, 1);
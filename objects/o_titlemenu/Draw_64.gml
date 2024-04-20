draw_self();

if menu_option_selected = 0
{
	draw_sprite_ext(s_newgame, 1,  RES_HALFW * .1, RES_H * 5.75, .2, .2, 0, c_white, 1);
}else draw_sprite_ext(s_newgame, 0,  RES_HALFW * .1, RES_H * 5.75, .2, .2, 0, c_white, 1);

if menu_option_selected = 1
{
	draw_sprite_ext(s_continue, 1,  RES_HALFW * .1, RES_H * 6.25, .2, .2, 0, c_white, 1);
}else draw_sprite_ext(s_continue, 0,  RES_HALFW * .1, RES_H * 6.25, .2, .2, 0, c_white, 1);

if menu_option_selected = 2
{
	draw_sprite_ext(s_options_1, 1,  RES_HALFW * .1, RES_H * 6.75, .2, .2, 0, c_white, 1);
}else draw_sprite_ext(s_options_1, 0,  RES_HALFW * .1, RES_H * 6.75, .2, .2, 0, c_white, 1);

if menu_option_selected = 3
{
	draw_sprite_ext(s_quit, 1,  RES_HALFW * .1, RES_H * 7.25, .2, .2, 0, c_white, 1);
}else draw_sprite_ext(s_quit, 0,  RES_HALFW * .1, RES_H * 7.25, .2, .2, 0, c_white, 1);

draw_sprite(s_title_logo, 0, 0 ,0);


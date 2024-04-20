/// @description Insert description here
// You can write your code in this editor
if (flash != 0)
{
	shader_set(h_whiteflash);
	shader_set_uniform_f(uflash, flash);
}

draw_self();

if (shader_current() != -1) shader_reset();
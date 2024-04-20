//player inputs
function get_input() {
//left stick	
	gamepad_set_axis_deadzone(0, 0.25);
	
	gpadup = gamepad_axis_value(0, gp_axislv);
	gpaddown = gamepad_axis_value(0, gp_axislv);
	
	gpadleft = gamepad_axis_value(0, gp_axislh);
	gpadright = gamepad_axis_value(0, gp_axislh)
	
	up = keyboard_check(ord("W")) || (gpadup < 0);
	down = keyboard_check(ord("S")) || (gpaddown > 0);
	left = keyboard_check(ord("A")) || (gpadleft < 0);
	right = keyboard_check(ord("D")) || (gpadright > 0);
	
	//calculate movement

	
	
//shoulder buttons
	attack = keyboard_check_pressed(ord("E")) || (gamepad_button_check_pressed(0, gp_shoulderr));
	magic = keyboard_check_pressed(ord("Q")) || (gamepad_button_check_pressed(0, gp_shoulderl));
	heavyattack = keyboard_check_pressed(ord("F")) || (gamepad_button_check_pressed(0, gp_shoulderrb));
	parry = keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_shoulderlb));
	
//face buttons
	roll = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face2));
	activate = keyboard_check_pressed(ord("Z")) || (gamepad_button_check_pressed(0, gp_face4));
	use = keyboard_check_released(vk_alt) || (gamepad_button_check_released(0, gp_face3));
	jump = keyboard_check_pressed(ord("C")) || (gamepad_button_check_pressed(0, gp_face1));
	jump_re = keyboard_check_released(ord("C")) || (gamepad_button_check_released(0, gp_face1));
	openMenu = keyboard_check_pressed(vk_tab) || (gamepad_button_check_pressed(0, gp_select));
	menuleft = keyboard_check_pressed(vk_left) || (gamepad_button_check_pressed(0, gp_padl));
	menuright = keyboard_check_pressed(vk_right) || (gamepad_button_check_pressed(0, gp_padr));
	menuup = keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0, gp_padu));
	menudown = keyboard_check_pressed(vk_down) || (gamepad_button_check_pressed(0, gp_padd));
	enter = keyboard_check_pressed(vk_enter) || (gamepad_button_check_pressed(0, gp_face1));
	charge_mp = keyboard_check(vk_control) ||  (gamepad_button_check(0, gp_padd));
	
	test_input = keyboard_check_released(ord("P"))
}

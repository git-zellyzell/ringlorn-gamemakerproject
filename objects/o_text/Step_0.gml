lerp_progress += (1 - lerp_progress) / 50;
text_progress += global.textspeed;

x1 = lerp(x1, x1_target, lerp_progress);
x2 =  lerp(x2, x2_target, lerp_progress);


//cycle responses
keyup = keyboard_check_pressed(vk_up);
keydown = keyboard_check_pressed( vk_down);
response_selected += (keydown - keyup);
var _max = array_length(responses) -1;
var _min =0;
if (response_selected > _max) response_selected = _min;
if (response_selected < _min ) response_selected = _max;


if (o_player.input.use)
{
	var _messagelength = string_length(my_message)
	if (text_progress >= _messagelength)
	{
		if (responses[0] != -1)
		{
			with (origin_instance) dialogue_options(other.response_scripts[other.response_selected]);
		}
		
		instance_destroy();
		if instance_exists(o_textqueued)
		{
			with (o_textqueued) ticket--;
		}
		else
		{
			with (o_player) state = last_state;
		}
	}
	else
	{
		if (text_progress > 2)
		{
			text_progress = _messagelength;
		}
	}
}

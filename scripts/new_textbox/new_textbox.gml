/// @arg message
/// @arg background
///@arg [responses]

function new_textbox()
{
	var _obj;
	if (instance_exists(o_text)) _obj = o_textqueued; else _obj = o_text;
	with (instance_create_layer(0, 0, "l_entities", _obj))
	{
		my_message = argument[0];
		if (instance_exists(other)) origin_instance = other.id else origin_instance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		if (argument_count > 2)
		{
			//trim markers from responses
			responses = argument[2];
			for (var i = 0; i < array_length(responses); i++)
			{
				var _marker_position = string_pos(":", responses[i]);
				response_scripts[i] = string_copy(responses[i], 1, _marker_position - 1);
				response_scripts[i] = real(response_scripts[i]);
				responses[i] = string_delete(responses[i], 1, _marker_position);
				breakpoint = 10;
			}
		}
		else
		{
			responses = [-1];
			response_scripts = [-1];
		}
		
	}
	with (o_player)
	{
		if (state != PLAYERSTATE.LOCKED)
		{
			last_state = state;
			state = PLAYERSTATE.LOCKED;
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function alarm_struct(default_start_time, _func) constructor{
	
time_remaining = 0;
dst = 0;
alarm_event = function()
{
	show_debug_message("no function set for this alarm");
}
	
if (argument_count == 2)
{
	dst = default_start_time;
	alarm_event = _func;
}
static set = function()
{
	time_remaining = argument_count == 1  ? argument[0] : 1;
}
static run = function() 
{
	if (time_remaining > 0)
	{
		time_remaining -= argument_count == 1  ? argument[0] : 1;
		if (time_remaining <= 0)
		{
			alarm_event();
		}
	}
}

static is_active = function()
{
	return time_remaining > 0 ? true : false;
}

static cancel = function()
{
	time_remaining = 0;
}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cycle_array(array, current_index, cycle_direction)
{
	var array_size = array_length(array);
	var new_index = current_index + cycle_direction;
	
	if (new_index < 0)
	{
		new_index = array_size - 1;
	}else if (new_index >= array_size){new_index = 0;}

}
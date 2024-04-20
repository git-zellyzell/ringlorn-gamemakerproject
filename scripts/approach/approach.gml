///@arg current_value
///@arg target_value
///@arg change_amount
function approach(argument0, argument1, argument2) {

	var current_value = argument0;
	var target_value = argument1;
	var change_amount = argument2;

	if (current_value < target_value)
	{
		return  min(current_value + change_amount, target_value);
	}else
		{
			return max(current_value - change_amount, target_value);
		}



}

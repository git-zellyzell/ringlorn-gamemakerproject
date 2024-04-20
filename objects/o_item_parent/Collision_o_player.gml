/// @description Collect Item
var success = false;

if o_Input.activate and (item_struct.quant < item_struct.max_quant)
{
	item_struct.quant += 1;   
	success = true
}


if (success = true) instance_destroy(); 
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Decorate(array_sprites, layer_name, my_y)
{
	var layer_count = 0
	var next_layer = string(layer_count);
	var to_layer = layer_name + next_layer
	if layer_exists(to_layer)
	{
		layer_count += 1;
	}
	if !layer_exists(to_layer)
	{
		layer_create(irandom_range(-155, 1), to_layer)
	}
	
	for (i = 0; i < array_length(array_sprites); i++)
	{
		var array_sprite = array_sprites[i];

		layer_sprite_create(choose("new_assets0","new_assets1","new_assets2","new_assets3","new_assets4","new_assets5","new_assets6","new_assets7","new_assets8","new_assets9","new_assets10",), irandom_range(0, room_width + 100), my_y, array_sprite)
	}
}
///@arg sprite index
///@arg damage output
///@arg effect
function process_attack(argument0, argument1, argument2) {

	var damageoutput = argument1;
	var damage_effect = argument2
	if (sprite_index != argument0)
	{
		sprite_index = argument0;
		image_index = 0
		ds_list_clear(hitbyattack);
	}


	var hitbyattacknow = ds_list_create();
	var hits = instance_place_list(x, y, other, hitbyattacknow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			var hitid = hitbyattacknow [| i];
			if (ds_list_find_index(hitbyattack, hitid) == -1)
			{
				ds_list_add(hitbyattack, hitid);
				with (hitid)
				{
					global.combo_timer = 90;
					global.player_combo += 1;
					enemyhit(damageoutput, damage_effect);
				}
			}
		}
	}
	ds_list_destroy(hitbyattacknow);



}

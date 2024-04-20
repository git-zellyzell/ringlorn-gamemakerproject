
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
					if (entity_hit != -1) script_execute(entity_hit)
				}
			}
		}
	}
	ds_list_destroy(hitbyattacknow);

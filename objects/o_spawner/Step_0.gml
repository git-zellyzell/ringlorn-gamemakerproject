/// @description spawn things

if (triggered)
{
	//check list for enemies that are ready to spawn. and spawn them at the right wave
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i)
		if (next[SPAWNER.WAVE] == current_wave) and (next[SPAWNER.DELAY] == timer)
		{
			var spawnpoint = next[SPAWNER.SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "l_entities", next[SPAWNER.TYPE]);
		}
	}
	//increase timer
	timer++;
	
	//next wave or end spawner when all enemies have died
	if (remaining[current_wave] <= 0)
	{
		if (current_wave == total_waves)
		{
			instance_destroy();
		}
		else
		{
			current_wave++;
			timer = 0;
		}
	}
}


/// @description start waves

if (triggered == false)
{
	triggered = true
	
	//how many waves and enemies
	total_waves = -1;
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves, i);
		if (thisentry[SPAWNER.WAVE] > total_waves)
		{
			total_waves++;
			remaining[total_waves] = 0; 
		}
		remaining[total_waves]++;
	}
}

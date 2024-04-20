//enter state
if (state == 0)
{
	//change room
	timer++;
	if (timer >= duration)
	{
		room_goto(target_room);
		//set state
		state = 1;
	}
}
//exit state
else if (state == 1)
{
	timer--;
	//destroy
	if (timer <= 0)
	{
		instance_destroy();
	}
}

//set alpha
alpha = timer / duration;
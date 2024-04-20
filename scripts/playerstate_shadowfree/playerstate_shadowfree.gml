function playerstate_shadowfree()
{
	armor = 1;
	grav = 1;
	var move = input.right - input.left;
	xspeed = move * o_player.jog_speed;


	if !place_meeting(x, y + 1, o_wall)
	{
		sprite_index = s_cpjumpup;
		image_speed = 0;
		if (yspeed > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		image_speed = 1; 
		if(xspeed == 0)
		{
			sprite_index = s_RavenDarkIdle;
		}
		else
		{
			sprite_index = s_RavenDarkRun;
		}
	}
	if (xspeed != 0) image_xscale = sign(xspeed);

	//climbing ladders
	if (place_meeting(x, y, o_Ladder) and (input.activate and input.down)) or (place_meeting(x, y, o_Ladder) and (input.activate))
	{
			xspeed = 0;
			yspeed = 0;
			grav = 0;
			state = PLAYERSTATE.CLIMB
	}

	//for moving around
	//moving left


	
	//face buttons
	if input.roll and (current_dodge >= 1)
	{
		current_dodge -= 1;
		state = PLAYERSTATE.DODGE;
	}

	// Check if the jump button is pressed

	if input.jump
	{
		// Record the time the button was pressed
		player_jump();
	}
	// Check if the jump button is released
	if input.jump_re
	{
	    // Stop the player's upward velocity if the button is released
	    yspeed = max(yspeed, jump_speed/2);
	}


	//shoulder buttons
	if input.attack
	{
		state = PLAYERSTATE.COMBO_1;
	}
		
	if input.heavyattack
	{

		state = PLAYERSTATE.HEAVY_1;
	}

	if input.magic
	{
		global.a_spells[current_spell].to_use();
	}

	if input.parry
	{
		state = PLAYERSTATE.PARRY;
	}
	
	if input.test_input 
	{
		o_door.room_complete = true;
	}
}

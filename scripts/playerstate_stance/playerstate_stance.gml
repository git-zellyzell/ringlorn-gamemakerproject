function playerstate_stance() {
armor = 1;
grav = 1
var move = input.right - input.left;
xspeed = move * o_player.stance_speed;


	if !place_meeting(x, y + 1, o_wall) and !place_meeting(x, y + 1, o_platpass)
	{
		cantjumptime -= 1;
		sprite_index = s_cpjumpup;
		image_speed = 0;
		if (yspeed > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		image_speed = 1;
		cantjumptime = maxcantjumptime;
		if(xspeed == 0)
		{
			sprite_index = s_stanceIdle;
		}
		else
		{
			footstep_timer -= 1;
			sprite_index = s_newravensprint;
			if footstep_timer <= 0
			{
				audio_play_sound(footstep_1, 2, false, 1);
				footstep_timer = max_footsteptimer
			}
		}
	}
	if (xspeed != 0) 
	{
		image_xscale = sign(xspeed);
		stancetimer = 5;
		if (place_meeting(x, y + 1, o_wall))
		{
			audio_play_sound(footstep_1, 1, true, 0, 0, irandom_range(1,1.4))
		}
	}

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
		with o_hud
		{
			if selected_spell[active_spell] != 0
			{
				
				selected_spell[active_spell].to_use();
				o_player.current_mp -= selected_spell[active_spell].my_cost;
			}
		}
	}

	if input.parry
	{
		state = PLAYERSTATE.PARRY;
	}
	
	if input.test_input 
	{
			o_enemy.current_hp = 0;	
	}

		
	stancetimer -= .1
	if stancetimer <= 0
	{
		state = PLAYERSTATE.FREE
		stancetimer = 0
	}
}

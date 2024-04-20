function playerstate_free() 
{
	if (global.arc_synergy.active = true) bonus_speed = .2
	sp_regen = .12
	armor = 1;
	grav = 1;
	var move = input.right - input.left;
	xspeed = move * o_player.jog_speed + bonus_speed;



	if !place_meeting(x, y + 1, o_wall) and !place_meeting(x, y + 1, o_platpass)
	{
		cantjumptime -= 1;
		if cantjumptime > 0
		{
			grav = .5;
		}else grav = 1;
		set_state_sprite(s_cpjumpup, 1, 0)
		if (yspeed > 0) set_state_sprite(s_cpjumpdown, 1, 0)
	}
	else
	{
		image_speed = 1;
		cantjumptime = maxcantjumptime;
		if(xspeed == 0)
		{
			sprite_index =newravenidle;
			
		}
		else
		{
			footstep_timer -= 1;
			sprite_index = s_newravenrun;
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

	if input.jump and !global.spellmenu
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
		xspeed = 0;
		state = PLAYERSTATE.COMBO_1;
	}
		
	if input.heavyattack
	{
		xspeed = 0;
		if global.conservation.active = false
		{
						if (o_player.current_energy >= 25) o_player.current_energy -= 25;
		}
		state = PLAYERSTATE.HEAVY_1;
	}

	if input.magic
	{
		xspeed = 0;
		with o_hud
		{
			if selected_spell[active_spell] != 0 and o_player.current_mp >= selected_spell[active_spell].my_cost
			{
				
				selected_spell[active_spell].to_use();
				if global.mana_pool.active = false
				{
					o_player.current_mp -= selected_spell[active_spell].my_cost;
				}else if global.mana_pool.active = true
				{
					mana_chance = irandom(100)
					if (mana_chance <= 50)
					{
						o_player.current_mp -= selected_spell[active_spell].my_cost;
					}
				}
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
}

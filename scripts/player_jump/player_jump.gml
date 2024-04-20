// Function to make the player jump
function player_jump()
{
    // Check if the player is on the ground
    if (place_meeting(x, y + 1, o_wall)) or (place_meeting(x, y + 1, o_platpass)) or (o_player.cantjumptime > 0)
    {
        // Player is on the ground, reset the number of jumps
        jump_count = 0;
    }
    // Check if the player has less than 2 jumps
    if (jump_count < 2)
    {
        // Add 1 to the number of jumps
        jump_count += 1;
		
        yspeed = jump_speed;
		audio_play_sound(sfx_jump_1, 1, false)
		cantjumptime = 0;
		
    }
	

}


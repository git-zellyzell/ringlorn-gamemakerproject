// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerstate_projectile_1()
{
	// Create a variable to store the cooldown time
var cooldown_time = 0;

// In the step event
if (input.magic && cooldown_time <= 0)
{
    // Generate a random x position within the object's width
    var random_x = irandom_range(-width / 2, width / 2);

    // Generate a random y position within the object's height
    var random_y = irandom_range(-height / 2, height / 2);

    // Spawn a projectile object at the random position
    var projectile = create_bullet(magic_bolt, x + random_x, y + random_y, self)

    // Set the direction of the projectile
    projectile.direction = direction;

    // Reset the cooldown time
    cooldown_time = 30; // The cooldown time in frames
}

// Decrement the cooldown time in the step event
cooldown_time -= 1;
}
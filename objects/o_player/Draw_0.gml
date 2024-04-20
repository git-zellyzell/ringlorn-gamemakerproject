
// Inherit the parent event
event_inherited();

draw_text(x, y - 100, string(damage_modifier));

var random_x = irandom_range(sprite_width * .04, -sprite_width * .1);
var random_y = irandom_range(-sprite_height * .05, -sprite_height * .14);

draw_circle(x, y, sprite_width * .04, true)
draw_circle(x, y, sprite_width * .08, true)

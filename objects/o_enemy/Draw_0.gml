draw_self();
draw_circle_color(x, y, melee_dist, c_purple, c_purple, true);
draw_circle_color(x, y, aggro_dist, c_red, c_red, true);
draw_circle_color(x, y, ready_dist, c_blue, c_blue, true);
draw_circle_color(x, y, escape_dist, c_green, c_green, true);
draw_text(x, y - 50, string(aggro_check));
draw_text(x, y - 100, string(current_hp));
draw_text(x, y - 150, string(xspeed));
draw_text(x, y - 200, string(chase_speed));
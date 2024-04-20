part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_type = part_type_create();

part_emitter_region(part_system, part_emitter, 0 , display_get_width(), 0, -50, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(part_system, part_emitter, part_type, -15);
part_type_sprite(part_type, s_sunray, false, false, false);
part_type_alpha3(part_type, 0, 1, 0);
part_type_color3(part_type, c_white, c_yellow, c_gray);
part_type_life(part_type, game_get_speed(gamespeed_fps) * 1, game_get_speed(gamespeed_fps) * 2.5);
part_type_scale(part_type, 1, 2.5);
part_type_gravity(part_type, 0.001, 180);
part_type_orientation(part_type, 330, 330, 0, 0, false)
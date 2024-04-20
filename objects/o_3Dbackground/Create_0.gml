depth = -2;
z = depth + ground_offset;

//Top Vertex Buffer
v_bufftop = vertex_create_buffer();
tex_top = sprite_get_texture(s_ground5, 0);

vertex_begin(v_bufftop, global.v_format)

vertex_create_face(v_bufftop,
									new vec3 (x, y, z + ground_depth),
									new vec3(x + sprite_width, y, z + ground_depth),
									new vec3(x + sprite_width, y, z),
									new vec3(x, y, z),
									-1, 1, sprite_width, ground_depth);
vertex_end(v_bufftop);
vertex_freeze(v_bufftop);
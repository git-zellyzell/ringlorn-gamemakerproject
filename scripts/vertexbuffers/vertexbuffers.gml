vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

global.v_format = vertex_format_end();

function vertex_create_face (v_buff, p1, p2, p3, p4, v_color, v_alpha, v_width, v_height)
{
	static tex_size = 64;
	var tex_w = v_width / tex_size;
	var tex_h = v_height / tex_size;
	
	//First Triangle
	vertex_position_3d(v_buff, p1.x, p1.y, p1.z);
	vertex_texcoord(v_buff, 0, 0);
	vertex_color(v_buff, v_color, v_alpha);
	
	vertex_position_3d(v_buff, p2.x, p2.y, p2.z);
	vertex_texcoord(v_buff, tex_w, 0);
	vertex_color(v_buff, v_color, v_alpha);
	
	vertex_position_3d(v_buff, p3.x, p3.y, p3.z);
	vertex_texcoord(v_buff, tex_w, tex_h);
	vertex_color(v_buff, v_color, v_alpha);
	
	//Second Triangle
	vertex_position_3d(v_buff, p1.x, p1.y, p1.z);
	vertex_texcoord(v_buff, 0, 0);
	vertex_color(v_buff, v_color, v_alpha);
	
	vertex_position_3d(v_buff, p3.x, p3.y, p3.z);
	vertex_texcoord(v_buff, tex_w, tex_h);
	vertex_color(v_buff, v_color, v_alpha);
	
	vertex_position_3d(v_buff, p4.x, p4.y, p4.z);
	vertex_texcoord(v_buff, 0, tex_h);
	vertex_color(v_buff, v_color, v_alpha);
}
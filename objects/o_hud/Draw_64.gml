if instance_exists(o_player) and !global.gamepaused
{
//test variables
	/*
	
	
	draw_text(x + 500, y + 140, o_player.current_hp);
	draw_text(x + 500, y + 160, o_player.current_hs);
	draw_text(x + 500, y + 180, o_player.current_dodge);
	
	draw_text(x + 500, y + 250, o_player.sp_lvl);
	draw_text(x + 500, y + 300, o_player.invincible);
	*/
	draw_text(x + 500, y + 200, o_player.current_mp);
	draw_text(x + 500, y + 220, o_player.current_energy);
	draw_text(x + 500, y + 240, o_player.current_sp);
	draw_text(x + 500, y + 260, o_player.jump_time);
	draw_text(x + 500, y + 280, global.player_combo);
	draw_text(x + 500, y + 300, global.combo_timer);

#region//draw hud cluster
#region//draw dodge
	with o_player
	{
		draw_sprite_ext(s_hud_clust_dodge2, 1, 0, 8, .25, .25, 0, c_white, current_dodge / 2);			
		draw_sprite_ext(s_hud_clust_dodge2, 0, 0, 8, .25, .25, 0, c_white, current_dodge);
		if current_dodge >= 2
		{
			draw_sprite_ext(s_hud_clust_dodge, 1, 0, 8, .25, .25, 0, c_white, 1);			
		}
		if current_dodge >= 1
		{
				draw_sprite_ext(s_hud_clust_dodge, 0, 0, 8, .25, .25, 0, c_white, 1);
		}
	}

#endregion
#region//draw energy
	with o_player
	{
		draw_energy = lerp(draw_energy, current_energy, 0.1);
		draw_sprite_part_ext(s_hud_clust_energy, 0, 0, 0, (draw_energy / max_energy) * 2508, 52, ENERGY_X, ENERGY_Y, .25, .25, c_white, 1);
		if energy_charge = 1
		{
			draw_sprite_ext(s_hud_clust_charges, 0, 0, 8, .25, .25, 0, c_white, 1)
		}
		if energy_charge = 2
		{
			draw_sprite_ext(s_hud_clust_charges, 1, 0, 8, .25, .25, 0, c_white, 1)
		}
		if energy_charge = 3
		{
			draw_sprite_ext(s_hud_clust_charges, 2, 0, 8, .25, .25, 0, c_white, 1)
		}
		if energy_charge = 4
		{
			draw_sprite_ext(s_hud_clust_charges, 3, 0, 8, .25, .25, 0, c_white, 1)
		}		
	}
#endregion
#region//draw HP
	with o_player
	{
		if current_hs >= 1 
		{
			draw_sprite_ext(s_hud_clust_hp, 0, 0, 8, .25, .25, 0, c_white, 1);
		}
	
		if current_hs < 1
		{
			draw_sprite_ext(s_hud_clust_hp, -1, 0, 8, .25, .25, 0, c_white, 1);
		}
	}
#endregion
#region//draw magic
	with o_player
	{
		draw_mp = lerp(draw_mp, current_mp, 0.1);
		draw_sprite_part_ext(s_hud_clust_mp, 0, 0, 0, 5000, (draw_mp / (max_mp * .25)) * 200, 363, 176, -.25, -.25, c_white, 1);
		if (current_mp > 25)
		{
			draw_sprite_part_ext(s_hud_clust_mp, 1, 0, 0, 5000, 4 * (draw_mp / max_mp - 0.25) * 200, 363, 176, -.25, -.25, c_white, 1);
		}
		if (current_mp > 50)
		{
			draw_sprite_part_ext(s_hud_clust_mp, 2, 0, 0, 5000, 4 * (draw_mp / max_mp - 0.5) * 200, 363, 176, -.25, -.25, c_white, 1);
		} 
		if current_mp > 75
		{
			draw_sprite_part_ext(s_hud_clust_mp, 3, 0, 0, 5000, 4 * (draw_mp / max_mp - 0.75) * 200, 363, 176, -.25, -.25, c_white, 1);
		}
	
		
	}
#endregion	
#region//draw scales
	if o_player.current_hs >= 1 
	{
		draw_sprite_ext(s_hud_clust_scales, 0, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 2 
	{
		draw_sprite_ext(s_hud_clust_scales, 1, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 3 
	{
		draw_sprite_ext(s_hud_clust_scales, 2, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 4 
	{
		draw_sprite_ext(s_hud_clust_scales, 3, 0, 8, .25, .25, 0, c_white, 1);
	}	
	if o_player.current_hs >= 5 
	{
		draw_sprite_ext(s_hud_clust_scales, 4, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 6 
	{
		draw_sprite_ext(s_hud_clust_scales, 5, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 7 
	{
		draw_sprite_ext(s_hud_clust_scales, 6, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.current_hs >= 8 
	{
		draw_sprite_ext(s_hud_clust_scales, 7, 0, 8, .25, .25, 0, c_white, 1);
	}
#endregion
#region//draw sharpness lvl 
	if o_player.sp_lvl = 0
	{
		o_player.damage_modifier = 1.15;
		o_player.sp_reduction = 3;
		draw_sprite_ext(s_hud_clust_sharpness, 0, 0, 8, .25, .25, 0, c_white, 1);
		if (global.razors_edge.active = true) o_player.damage_modifier += .1; //razor's edge
		
	}
	if o_player.sp_lvl = 1
	{
		o_player.damage_modifier = 1;
		o_player.sp_reduction = 8;
		draw_sprite_ext(s_hud_clust_sharpness, 1, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.sp_lvl = 2
	{
		o_player.damage_modifier = 1;
		o_player.sp_reduction = 8;
		draw_sprite_ext(s_hud_clust_sharpness, 2, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.sp_lvl = 3
	{
		o_player.damage_modifier = 1;
		o_player.sp_reduction = 8;		
		draw_sprite_ext(s_hud_clust_sharpness, 3, 0, 8, .25, .25, 0, c_white, 1);
	}
	if o_player.sp_lvl = 4
	{
		o_player.damage_modifier = 0.8;
		o_player.sp_reduction = 50;		
		draw_sprite_ext(s_hud_clust_sharpness, 4, 0, 8, .25, .25, 0, c_white, 1);
	}
#endregion
	
	draw_sprite_ext(s_hud_clust, 0, 0, 8, .25, .25, 0, c_white, 1);
#endregion

	if global.gamepaused = false and global.upgrade_menu = false and global.spellmenu = false //draw the inventory to the screen
	{
		if selected_spell[active_spell] != 0
		{
			draw_text_color(600, 180, selected_spell[active_spell].my_name, c_aqua, c_aqua, c_blue, c_blue, 1);
		}
	
		
		for (var i = 0; i  < quick_items; i++)
		{
			if (current_item == i)
			{
				draw_set_font(f_main)
				if global.a_pickups[current_item].quant < 1
				{
					draw_sprite_ext(global.a_pickups[current_item].my_sprite, 1, 112, (RES_H * 6.5), .2, .2, 0, c_white, 1);
				}
				else
				{
					draw_sprite_ext(global.a_pickups[current_item].my_sprite, 0, 112, (RES_H * 6.5), .2, .2, 0, c_white, 1);
				}
				
				draw_text(185, (RES_H * 7.05), global.a_pickups[current_item].quant);
				draw_text(250, (RES_H * 6.3), global.a_pickups[current_item].my_name + ":" + global.a_pickups[current_item].desc);
			}
		}
		prev_item = current_item + 1;
		next_item = current_item - 1;
		if current_item = 3 {prev_item = 0;}
		if current_item = 0 {next_item = 3;}
		for (var i = 0; i  < quick_items; i++)
		{
			if (prev_item == i)
			{
				draw_sprite_ext(global.a_pickups[prev_item].my_sprite, 2, 45, (RES_H * 6.57), .15, .15, 0, c_white, 1);
			}
		}
	
		for (var i = 0; i  < quick_items; i++)
		{
			if (next_item == i)
			{
				draw_sprite_ext(global.a_pickups[next_item].my_sprite, 2, 200, (RES_H * 6.57), .15, .15, 0, c_white, 1);
			}
		}
	
	}
	
	

	if global.spellmenu //draw the spell selection screen
	{
		draw_sprite(s_pause, 0, x, y)
		//slot 1 spells
		if viewed_slot = 0
		{
			for (var i = 0; i  < array_length(a_slots[0]); i++)
			{
				if (current_entry[0] == i)
				{
					draw_text_color(250, 180, a_slots[0][current_entry[0]].my_name, c_white, c_white, c_white, c_white, 1)				
				}
			}
			
			var next_entry = current_entry[0] + 1;
			var prev_entry = current_entry[0] - 1;
			if current_entry[0] = (array_length(a_slots[0]) - 1) {next_entry = 0;}
			if current_entry[0] = 0 {prev_entry = (array_length(a_slots[0]) - 1);}
			for (var i = 0; i  < array_length(a_slots[0]); i++)
			{
				if (prev_entry == i)
				{
					draw_text_color(100, 180, a_slots[0][prev_entry].my_name, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1)				
				}
			}
	
			for (var i = 0; i  < array_length(a_slots[0]); i++)
			{
				if (next_entry == i)
				{
					draw_text_color(400, 180, a_slots[0][next_entry].my_name, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1)
				}
			}
		}else
		{
			var next_entry = current_entry[0] + 1;
			var prev_entry = current_entry[0] - 1;
			if current_entry[0] = (array_length(a_slots[0]) - 1) {next_entry = 0;}
			if current_entry[0] = 0 {prev_entry = (array_length(a_slots[0]) - 1);}
			
			draw_text_color(250, 180, a_slots[0][current_entry[0]].my_name, c_gray, c_gray, c_gray, c_gray, 1)
			draw_text_color(100, 180, a_slots[0][prev_entry].my_name, c_gray, c_gray, c_gray, c_gray, 1)	
			draw_text_color(400, 180, a_slots[0][next_entry].my_name, c_gray, c_gray, c_gray, c_gray, 1)
		}
		
		//slot 2 spells
		if viewed_slot = 1
		{
			for (var i = 0; i  < array_length(a_slots[1]); i++)
			{
				if (current_entry[1] == i)
				{
					draw_text_color(250, 200, a_slots[1][current_entry[1]].my_name, c_white, c_white, c_white, c_white, 1)				
				}
			}
			
			var next_entry = current_entry[1] + 1;
			var prev_entry = current_entry[1] - 1;
			if current_entry[1] = (array_length(a_slots[1]) - 1) {next_entry = 0;}
			if current_entry[1] = 0 {prev_entry = (array_length(a_slots[1]) - 1);}
			for (var i = 0; i  < array_length(a_slots[1]); i++)
			{
				if (prev_entry == i)
				{
					draw_text_color(100, 200, a_slots[1][prev_entry].my_name, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1)				
				}
			}
	
			for (var i = 0; i  < array_length(a_slots[1]); i++)
			{
				if (next_entry == i)
				{
					draw_text_color(400, 200, a_slots[1][next_entry].my_name, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1)
				}
			}
		}else
		{
			var next_entry = current_entry[1] + 1;
			var prev_entry = current_entry[1] - 1;
			if current_entry[1] = (array_length(a_slots[1]) - 1) {next_entry = 0;}
			if current_entry[1] = 0 {prev_entry = (array_length(a_slots[0]) - 1);}
			
			draw_text_color(250, 200, a_slots[1][current_entry[1]].my_name, c_gray, c_gray, c_gray, c_gray, 1)
			draw_text_color(100, 200, a_slots[1][prev_entry].my_name, c_gray, c_gray, c_gray, c_gray, 1)	
			draw_text_color(400, 200, a_slots[1][next_entry].my_name, c_gray, c_gray, c_gray, c_gray, 1)
		}
		if selected_spell[0] != 0
		{	
			draw_text_color(600, 180, selected_spell[0].my_name, c_aqua, c_aqua, c_blue, c_blue, 1);
		}	
		if selected_spell[1] != 0
		{
			draw_text_color(600, 200, selected_spell[1].my_name, c_aqua, c_aqua, c_blue, c_blue, 1);
		}
	}
}

draw_set_font(f_objective);
draw_rectangle(x +1350, y + 300, x + 2000, y + 350, true);
draw_text(x + 1400, y + 315, room_objective +  string(targets_found) + string(room_target));

if global.skill_menu
{
	if (card_slot[0].needs_cards = false) and (card_slot[1].needs_cards = false) and (card_slot[2].needs_cards = false)
	{
		if selected_card = 0
		{
			draw_sprite_ext(card_slot[0].my_sprite, 1, 320, 540, .5, .5, 0, c_white, 1);
		}else draw_sprite_ext(card_slot[0].my_sprite, 0, 320, 540, .5, .5, 0, c_white, 1);
		
		if selected_card = 1
		{
			draw_sprite_ext(card_slot[1].my_sprite, 1, 960, 540, .5, .5, 0, c_white, 1);
		}else draw_sprite_ext(card_slot[1].my_sprite, 0, 960, 540, .5, .5, 0, c_white, 1);
		
		if selected_card = 2
		{
			draw_sprite_ext(card_slot[2].my_sprite, 1, 1600, 540, .5, .5, 0, c_white, 1);
		}else 	draw_sprite_ext(card_slot[2].my_sprite, 0, 1600, 540, .5, .5, 0, c_white, 1);
	}
}
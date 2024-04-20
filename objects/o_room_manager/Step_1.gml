if card_slot[0].needs_cards = true
{
	card_slot[0].my_struct = all_skills[irandom_range(0, array_length(all_skills) - 1)]
	card_slot[0].my_sprite = card_slot[0].my_struct.my_card;
	card_slot[0].my_name = card_slot[0].my_struct.my_name;
	
	card_slot[0].needs_cards = false;
}

if card_slot[1].needs_cards = true
{
	card_slot[1].my_struct = all_skills[irandom_range(0, array_length(all_skills) - 1)]
	card_slot[1].my_sprite = card_slot[1].my_struct.my_card;
	card_slot[1].my_name = card_slot[1].my_struct.my_name;
	if (card_slot[1].my_struct = card_slot[0].my_struct)
	{
		card_slot[1].needs_cards = true;
	}else card_slot[1].needs_cards = false;
}

if card_slot[2].needs_cards = true
{
	card_slot[2].my_struct = all_skills[irandom_range(0, array_length(all_skills) - 1)]
	card_slot[2].my_sprite = card_slot[2].my_struct.my_card;
	card_slot[2].my_name = card_slot[2].my_struct.my_name;
	if (card_slot[2].my_struct = card_slot[0].my_struct) or (card_slot[2].my_struct = card_slot[1].my_struct)
	{
		card_slot[2].needs_cards = true;
	}else card_slot[2].needs_cards = false;
}

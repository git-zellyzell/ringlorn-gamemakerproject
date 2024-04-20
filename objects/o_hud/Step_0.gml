/// @description Insert description here
// You can write your code in this editor
//item hotbar
list_weapons()

a_slots[0] = [global.sp_blade, global.sp_shot, global.sp_burst, global.sp_spike];
a_slots[1] = [global.sp_blade, global.sp_shot, global.sp_burst, global.sp_spike];



//enforce 0 items
if global.a_pickups[current_item].quant < 0
{
	global.a_pickups[current_item].quant = 0;
}

//switching quick items
if !global.gamepaused and !global.skill_menu
{
	if instance_exists(o_player)
	{
		if o_player.input.menuright and !instance_exists(o_text)
		{ 
			current_item++;
			if (current_item >= quick_items) current_item = 0;
		}
	
		if o_player.input.menuleft and !instance_exists(o_text)
		{
			current_item--;
			if (current_item < 0) current_item = quick_items - 1;
		}
	
		if o_player.input.use and global.a_pickups[o_hud.current_item].quant >= 1
		{
			global.a_pickups[o_hud.current_item].item_effect();
			global.a_pickups[o_hud.current_item].quant -= 1;
		}
		
		if o_player.input.menudown
		{
			active_spell++;
			if (active_spell >= array_length(selected_spell)) active_spell = 0;			
		}
		
		if o_player.input.menuup
		{
			active_spell--;
			if (active_spell < 0) active_spell = array_length(selected_spell) - 1;			
		}
	}
	

}

//controlling spell menu
if (global.spellmenu)
{
	if o_player.input.menudown
	{
		viewed_slot++
		if (viewed_slot >= array_length(a_slots)) viewed_slot = 0;
	}
	if o_player.input.menuup
	{
		viewed_slot--
		if (viewed_slot < 0) viewed_slot = array_length(a_slots) - 1;
	}
	
	if viewed_slot = 0
	{
		if o_player.input.menuright
		{
			current_entry[0]++
			if (current_entry[0] >= array_length(a_slots[0])) current_entry[0] = 0;
		}
		if o_player.input.menuleft
		{
			current_entry[0]--
			if (current_entry[0] < 0) current_entry[0] = array_length(a_slots[0]) - 1;
		}
		if o_player.input.enter
		{
			selected_spell[0] = a_slots[0][current_entry[0]];
		}
	}
	
	if viewed_slot = 1
	{
		if o_player.input.menuright
		{
			current_entry[1]++
			if (current_entry[1] >= array_length(a_slots[1])) current_entry[1] = 0;
		}
		if o_player.input.menuleft
		{
			current_entry[1]--
			if (current_entry[1] < 0) current_entry[1] = array_length(a_slots[1]) - 1;
		}
		if o_player.input.enter
		{
			selected_spell[1] = a_slots[1][current_entry[1]];
		}
	}
}
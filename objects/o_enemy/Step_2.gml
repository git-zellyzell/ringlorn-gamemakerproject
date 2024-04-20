

if current_hp <= 0
{
	drop_items(drop_chance);
	ds_list_add(global.destroyed_enemies, my_struct.my_name)
	instance_destroy()
}
flash = max(flash - 0.09, 0)

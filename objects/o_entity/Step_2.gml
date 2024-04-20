/// @desc Entity Loop
/*
if (!global.gamepaused)
{
	depth = -bbox_bottom;
}
*/
if current_hp <= 0
{
	drop_items(drop_chance);
	instance_destroy()
}
flash = max(flash - 0.09, 0)
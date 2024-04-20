/// @description Insert description here
// You can write your code in this editor
if (entity_activate_script != -1)
{
if o_player.input.activate and just_read = false
	{
		script_execute_array(entity_activate_script, entity_activate_args);
		just_read = true
		
	}
}


function create_hitbox(weapon_struct, combo_num, x_position, y_position, creator, hb_object, xscale)
{
	var hitbox = instance_create_layer(x_position, y_position, "l_entities", hb_object);
	hitbox.sprite_index = combo_num._hb;
	hitbox.image_speed = weapon_struct.my_spd;
	hitbox.creator = creator;
	hitbox.knockback = (weapon_struct._kb - other.kb_resist);
	hitbox.image_xscale = xscale;
	hitbox.alarm[0] = combo_num._life;
	hitbox.damage = ((o_player.damage_modifier * weapon_struct.my_dmg) * other.armor);
	hitbox.damage_effect = weapon_struct.my_dmgtype;
}

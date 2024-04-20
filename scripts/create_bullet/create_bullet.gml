
function create_bullet(bullet_struct, xpos, ypos, zpos, creator)
{
	var hitbox = instance_create_depth(xpos, ypos, zpos, o_bullet);
	hitbox.sprite_index = bullet_struct.my_sprite;
	hitbox.image_speed = bullet_struct.ispeed;
	hitbox.creator = creator;
	hitbox.knockback = bullet_struct.knockback;
	hitbox.alarm[0] = bullet_struct.lifespan;
	hitbox.damage = (o_player.damage_modifier * bullet_struct.blt_dmg) + (bullet_struct.blt_dmg * chip_bonus) ;
	hitbox.damage_effect = bullet_struct.dmg_type;
	hitbox.xspeed = bullet_struct.blt_spd * creator.image_xscale;
	if (hitbox.xspeed != 0) hitbox.image_xscale = sign(hitbox.xspeed)
	cooldown_time = 7;
}
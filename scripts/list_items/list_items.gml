//consumable items
p_yellow = new item("Yellow Potion", "Restore 1 energy", 5, 0, s_potion_yellow, s_yellow,
			function(){if instance_exists(o_player){o_player.current_energy += 25;}});

p_purple =	new item("Purple Potion", "Restore 1 Mana", 5, 2, s_potion_purple, s_purple, 
			function(){if instance_exists(o_player){o_player.current_mp += 1;}})
			
p_wstone=	new item("Whetstone", "Restore Sharpness to full", 5, 2, s_whetstone, s_whetstone_2, 
			function(){if instance_exists(o_player){o_player.sharpness = o_player.max_sp;}});
			
p_blue	=	new item("Blue Potion", "Restore 1 dodge", 5, 2, s_potion_blue, s_blue, 
			function(){if instance_exists(o_player){o_player.current_dodge += 1;}});

global.a_pickups[3] = p_blue;
global.a_pickups[2] = p_yellow;
global.a_pickups[1] = p_purple;
global.a_pickups[0] = p_wstone;

//doors
d_weapon = new door("Weapon Room", s_door_red, 0);
d_health = new door("Heart Scale Room", s_door_green, 0);
d_magic = new door("Arcane Room", s_door_blue, 0);
d_stats = new door("Training Room", s_door_yellow, 0);

global.a_doors[3] = d_weapon;
global.a_doors[2] = d_health;
global.a_doors[1] = d_magic;
global.a_doors[0] = d_stats;
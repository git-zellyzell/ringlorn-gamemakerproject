///@desc game initialization
randomize();
input = instance_create_layer(0,0, "l_hud", o_Input);
global.partsystem = part_system_create();
part_system_depth(global.partsystem, -301);

global.gamepaused = false;
global.spellmenu = false;
global.textspeed = .75;
global.player_money = 20;
global.player_experience = 5;
global.upgrade_menu = false;
global.player_combo = 0;
global.combo_timer = 90;
global.room_complete = false;
room_goto(ROOM_START);
bgm_delay = 100;
bgm_playing = false;

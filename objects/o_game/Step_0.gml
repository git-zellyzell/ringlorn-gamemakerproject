/// @description Insert description here
// You can write your code in this editor
if !global.gamepaused
{
	global.combo_timer -= 1;
	if global.combo_timer <=0
	{
		global.player_combo = 0;
	}
	if (global.combo_timer < 0) global.combo_timer = 0;
}

if bgm_playing = false
{
	bgm_delay -= 1
	if bgm_delay <= 0
	{
		//audio_play_sound(bgm_training, 100, true)
		//bgm_playing = true
		var _bgm = audio_play_sound(RingLornOST_New_TitleScreen_Take_1_mix_down_mono, 100, true);
		audio_sound_gain(_bgm, 0, 0);
		audio_sound_gain(_bgm, .8, 20000);
		bgm_playing = true;
	}
}
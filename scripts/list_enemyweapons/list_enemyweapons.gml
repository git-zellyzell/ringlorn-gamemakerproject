// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function list_enemyweapons()
{
	w_trainer = new weapon3("trainer's way", 1, 1, 10, DAMAGETYPE.SHARP, 
							new combo(s_trainer_atk1, 0, 0, 8, 4, 5, ENEMYSTATE.COMBO_2, 0, 0),
							new combo(s_trainer_atk2, 0, 0, 8, 4, 5, ENEMYSTATE.FREE, 0, 0), 
							new combo(s_trainer_atk3, 0, 0, 8, 4, 5, ENEMYSTATE.FREE, 0, 0))
	
	w_dummy = new weapon1("dummy-fu", 1, 1, 0, DAMAGETYPE.NONE,
							new combo(s_dummy, 0, 0, 0, 0, 0, ENEMYSTATE.FREE, 0, 0))
}
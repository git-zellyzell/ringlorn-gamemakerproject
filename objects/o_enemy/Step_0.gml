//Inherit the parent event
event_inherited();


//enemystate machine
switch(enemystate)
{
	case ENEMYSTATE.FREE : enemystate_free(); break;
	case ENEMYSTATE.WANDER : enemystate_wander(); break;
	case ENEMYSTATE.READY : enemystate_ready(); break;
	case ENEMYSTATE.CHASE : enemystate_chase(); break;
	case ENEMYSTATE.COMBO_1 : enemystate_combo_1(my_weapon, my_weapon.atk1); break;
	case ENEMYSTATE.COMBO_2 : enemystate_combo_1(my_weapon, my_weapon.atk2); break;
}
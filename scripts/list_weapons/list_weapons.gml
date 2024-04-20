
function list_weapons()
{
	//combo progression: l1, r1, r2
	//r1 combo: r1, r1, r1, r1. nothing pressed before.
	w_main = new weapon4("Life-Steel Saber", 1, 5, sharp_reduc(), DAMAGETYPE.SHARP,
						new perf_combo(s_newraven1, s_cpatk1hb, 0, 20, 6, 11, 7, 8, PLAYERSTATE.COMBO_2, PLAYERSTATE.FOLLOW_1, 0, PLAYERSTATE.VINE_1),
						new perf_combo(s_newraven2, s_cpatk2hb, 0, 16, 3, 12, 13, 13, PLAYERSTATE.COMBO_3, PLAYERSTATE.FOLLOW_2, 0, PLAYERSTATE.VINE_1), 
						new perf_combo(s_newraven3, s_cpatk3hb, 0, 16, 5, 9, 8, 9, PLAYERSTATE.COMBO_4, PLAYERSTATE.FOLLOW_3, 0, PLAYERSTATE.VINE_1), 
						new perf_combo(s_newraven1, s_cpatk1hb, 0, 16, 6, 11, 7, 8, PLAYERSTATE.COMBO_1, PLAYERSTATE.FREE, 0, PLAYERSTATE.FREE))
						#region follow up combos
						//r1 follow up heavy attacks: r1, r2, r2, r2. r1 pressed before up to 3 times.				
						w_vine = new weapon3("Life-Steel Vine", 1, 3, charge_reduc(), DAMAGETYPE.HEAVY,
											new combo(s_warrioratk1, Sprite91, 1, 32, 7, 10, PLAYERSTATE.VINE_2, 0, 0),
											new combo(s_warrioratk2, Sprite91, 1, 32, 3, 4, PLAYERSTATE.VINE_3, 0, 0),
											new combo(s_warriordashatk, Sprite91, 1, 32, 15, 15, PLAYERSTATE.FREE, 0, 0))
						//r1 perf combo light attacks: r1, r1, r1. r1 pressed before up to 3 times.
						w_main_fl = new weapon1("Life-Steel Saber+", 1, 3, sharp_reduc(), DAMAGETYPE.SHARP,
											new combo(s_mainfollow_1, s_mainfollowhb_1, 0, 16, 0, 0, PLAYERSTATE.FREE, 0, 0))
						#endregion
	//r2 combo: r2, r2, r2. nothing pressed before. no follow ups.
	w_heavy = new weapon3("Life-Steel Claymore", 1, 3, charge_reduc(), DAMAGETYPE.HEAVY,
						new combo(s_fwatk1, s_heavyatk1hb, 4, 16, 4, 6, PLAYERSTATE.HEAVY_2, 0, 0),
						new combo(s_fwatk2, s_heavyatk2hb, 2, 16, 3, 6, PLAYERSTATE.HEAVY_3, 0, 0),
						new combo(s_fwatk3, s_heavyatk3hb, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))
	//l1 combo: l1, l1, l1, l1. nothing pressed before. NEEDS TO BE PERF!!!
	w_dark = new weapon4("Shadow Blade", 1, 3, 20, DAMAGETYPE.DARK,
						new combo(s_drkbld_1, s_drkbldhb_1, 2, 10, 4, 11, PLAYERSTATE.DARK_2, 0, 0),
						new combo(s_drkbld_2, s_drkbldhb_2, 0, 20, 5, 14, PLAYERSTATE.DARK_3, 0, 0),
						new combo(s_drkbld_3, s_drkbldhb_3, 0, 20, 5, 11, PLAYERSTATE.DARK_4, 0, 0),
						new combo(s_drkbld_4, s_drkbldhb_4, 0, 20, 7, 9, PLAYERSTATE.FREE, 0, 0))
						#region follow up combos for shadow blade
						//r1 follow up shadow blade. l1, r1, r1, r1. l1 pressed before up to 3 times. shadow blade spells
						w_dark_combo = new weapon3("Shadow Daggers", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_daggeratk1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_daggeratk1, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_daggeratk1, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))
						//r2 follow up shadow blade. l1, r2, r2, r2. l1 pressed before up to 3 times.
						w_dark_heavy = new weapon3("Shadow Sabers", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_saberatk1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_saberatk2, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_saberatk3, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))
						//r2 extended follow up. l1, r1, r2. l1 pressed before up to 3 times, followed by r1 pressed before up to 3 times.
						w_dark_extended = new weapon3("Stinger", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_stingeratk1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_stingeratk1, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_stingeratk1, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))
						#endregion
	w_burst = new weapon2("shadow burst", 1, 3, 20, DAMAGETYPE.DARK,
						new combo(s_drkbld_1, s_drkbldhb_1, 2, 10, 4, 11, PLAYERSTATE.BURST_2, 0, 0),
						new combo(s_drkbld_2, s_drkbldhb_2, 2, 10, 4, 11, PLAYERSTATE.FREE, 0, 0))
						
	w_spike = new weapon1("shadow spike", 1, 3, 20, DAMAGETYPE.DARK,
						new combo(s_drkbld_1, s_drkbldhb_1, 2, 10, 4, 11, PLAYERSTATE.FREE, 0, 0))
						
	//l1 combo: l1. doesn't chain loops infinitely. NEEDS TO BE PERF!!!
	w_shadow_shot = new weapon4("Shadow Bolt", 1, 3, 20, DAMAGETYPE.DARK,
						new combo(s_xbolt_1, s_xbolthb_1, 0, 10, 0, 0, PLAYERSTATE.SHOT_1, 0, 0),
						new combo(s_xbolt_1, s_xbolthb_1, 0, 20, 5, 14, PLAYERSTATE.SHOT_1, 0, 0),
						new combo(s_xbolt_1, s_xbolthb_1, 0, 20, 5, 11, PLAYERSTATE.SHOT_1, 0, 0),
						new combo(s_xbolt_1, s_xbolthb_1, 0, 20, 7, 9, PLAYERSTATE.FREE, 0, 0))
						#region follow up combos for shadow shot
						//r1 follow up shadow bolt. l1, r1, r1, r1. r1 pressed before up to 3 times. shadow bolt spells
						w_shot_combo = new weapon3("Charged Bolts", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_boltatk1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_boltatk1, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_boltatk1, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))										
						//r2 follow up shadow bolt. l1, r2, r2, r2. l1 pressed before up to 3 times. shadow bolt spell family
						w_shot_heavy = new weapon3("exploding Bolts", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_xbolt_1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_xbolt_1, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_xbolt_1, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))	
						//r2 extended follow up. l1, r1, r2. l1 pressed before up to 3 times, followed by r1 pressed before up to 3 times. 
						w_shot_extended = new weapon3("Overcharged Bolts", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
											new combo(s_ocboltatk1, Sprite91, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
											new combo(s_ocboltatk1, Sprite91, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
											new combo(s_ocboltatk1, Sprite91, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))
						#endregion
	//dodge follow ups. l1, r1, or r2 pressed during dodge animation.
	w_dodge = new weapon3("Dodge Attacks", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
						new combo(s_heavyatk1, s_heavyatk1hb, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
						new combo(s_heavyatk2, s_heavyatk2hb, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
						new combo(s_heavyatk3, s_heavyatk3hb, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))	
	//parry follow ups. l1, r1, or r2 pressed during dodge animation.
	w_parry_combo = new weapon4("Dodge Attacks", 1, 3, charge_reduc(), DAMAGETYPE.DARK,
						new combo(s_heavyatk1, s_heavyatk1hb, 4, 16, 5, 12, PLAYERSTATE.HEAVY_2, 0, 0),
						new combo(s_heavyatk2, s_heavyatk2hb, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
						new combo(s_heavyatk2, s_heavyatk2hb, 2, 16, 5, 9, PLAYERSTATE.HEAVY_3, 0, 0),
						new combo(s_heavyatk3, s_heavyatk3hb, 11, 12, 0, 0, PLAYERSTATE.FREE, 0, 0))	
						
	w_parry = new weapon1("Command Parry", 1, -1, 0, DAMAGETYPE.NONE,
						new combo(s_parry, s_parryhb, 0, 6, 2, 3, PLAYERSTATE.FREE, 0, 0))

	w_magicbolt = new bullet(s_xbolt_1, 1, 3, 60, 10, DAMAGETYPE.DARK, 10)
	
	global.sp_blade = new spell("Magic Blade", false, false, 25, function()
																	{
																		with (o_player)
																		{
																			state = PLAYERSTATE.DARK_1;
																		}
																	})
	global.sp_shot = new spell("Magic Shot", false, false, 0, function()
																	{
																															
																		with (o_player)
																		{
																			// Generate a random x position within the object's width
																			var random_x = irandom_range(sprite_width * .02, -sprite_width * .08);
																			// Generate a random y position within the object's height
																			var random_y = irandom_range(-sprite_height * .05, -sprite_height * .14);
																			var random_z = irandom_range(o_player.depth + 2, o_player.depth - 2);
																			create_bullet(w_magicbolt, o_player.x + random_x, o_player.y + random_y, random_z, self);
																			
																			//need to add a line and a weapon list entry for the charged arrow state. if the button is held down.
																		}
																	})
	global.sp_burst = new spell("Magic Burst", false, false, 20, function()
																	{
																		with (o_player)
																		{
																			state = PLAYERSTATE.BURST_1;
																		}
																	})
	global.sp_spike = new spell("Magic Spike", false, false, 25, function()
																	{
																		with (o_player)
																		{
																			state = PLAYERSTATE.SPIKE_1;
																		}
																	})

}
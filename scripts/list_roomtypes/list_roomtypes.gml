function list_roomtypes()
{
	//data structure to hold the various room types
	room_types = ds_map_create()
	//room type 1 - destroy set number of objects
	//these rooms will have enemies and obstacles.
	//reach the end of the room and defeat or destroy the target objects.
	//may have a variety of enemy types but specific types count towards the goal.
	//once the target amount has been completed the room is done.
	room_type_1 = ds_map_create();
	ds_map_add(room_type_1, "objective", "Destroy all Targets   ");
	ds_map_add(room_type_1, "target_count", irandom_range(5, 10));
	ds_map_add(room_type_1, "objective_enemy", ["Target Dummy", "Enemy Trainer"]);
	room_types[? "rm_trainingforest"] = room_type_1;
	
	
room_type_1 = new roomtype("Destroy Objects", "Destroy all Targets!   ", "Target Dummy", 7, 0, 0);





//arena rooms. there will  be waves of enemies to defeat.
	//these are small rooms the enemies should spawn on a relatively short timer. once all waves are done the room is complete.
	//room manager needs: needs to know how many waves and the current wave. needs to know how many enemies to spawn for each wave. it needs a pool of enemies to choose from. waves can overlap
//horde rooms. there will be a variety of enemies spawning. each enemy type will have a value. when the total value exceeds the goal the room is complete
	//small rooms with different types of enemies spawning frequently. needs a pool of enemies to choose from. enemies need to have their values. room manager needs to know the target value. 
	//when enemy hp = 0 add value to counter. 
//bonus rooms. variety rooms with games like matching, puzzles, and needle in a haystack.
	//room manager needs to know which room type it is. so it can select the right layout for the room. need to come up with puzzles. need breakable objects. need to know what the object is. street fighter car destroyer would work as a mini game
//rising lava rooms. reach the top of the room before you drown. experimental.
}
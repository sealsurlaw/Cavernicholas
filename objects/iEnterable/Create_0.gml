if variable_global_exists("can_move") == false {
	global.can_move = true;	
}

flashing_ = true;
flash_ = false;
alarm_set(0, 15);

goto_room_ = rmShaman;
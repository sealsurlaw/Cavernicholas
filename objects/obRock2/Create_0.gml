jump_height_ = 0;
jump_speed_ = 0;
jump_speed_init_ = 16;
jump_gravity = 1;
jump_rotate_ = 0;

function getRandomTime(_start) {
	return random_range(_start, 360)	
}

alarm_set(0, getRandomTime(0));
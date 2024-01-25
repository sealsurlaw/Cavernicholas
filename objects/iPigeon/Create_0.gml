jump_height_ = 0;
jump_speed_ = 0;
jump_speed_init_ = 8;
jump_gravity = 1;
jump_dir_ = -0.5;
x_offset_ = 0;
heart_index_ = 8;
fly_away_ = false;
rotation_ = 0;

// Bird already got the heart
function postCreate() {
	if global.hearts[heart_index_] == 2 {
		instance_destroy();	
	}
}

// Start jumping around at a random time
function getRandomTime(_start) {
	return random_range(_start, 240)	
}

alarm_set(0, getRandomTime(0));

flashing_ = true;
flash_ = false;
heart_flash_ = false;
alarm_set(1, 15);
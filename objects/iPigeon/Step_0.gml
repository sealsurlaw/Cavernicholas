event_inherited();

if fly_away_ == false {
	if jump_height_ > 0 {
		jump_speed_ -= jump_gravity;
		jump_height_ += jump_speed_;
		x_offset_ += jump_dir_;
	}
	if jump_height_ < 0 {
		jump_height_ = 0;
		jump_dir_ *= -1;
		alarm_set(0, getRandomTime(60));
	}

	flashing_ = global.can_move && distance_to_object(obPlayer) < 25;
	if flashing_ &&
	   keyboard_check(vk_enter) {
	    if global.hearts[heart_index_] == 1 {
			global.hearts[heart_index_] = 2;
			fly_away_ = true;
			audio_play_sound(sdBird, 10, false);
		} else {
			heart_flash_ = true;
			alarm_set(2, 120);
		}
	}
} else {
	// Rotate slightly
	if rotation_ > -30 {
		rotation_ -= 3;
	}
	
	// Fly away
	var _speed = 9;
	var _o = sin(degtorad(0-rotation_)) * _speed;
	var _a = cos(degtorad(0-rotation_)) * _speed;
	y -= _o;
	x -= _a;
}

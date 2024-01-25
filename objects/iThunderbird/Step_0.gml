if locked_on_ == false && diving_ == false && recovering_ == false {
	if x <= begin_x_ || x >= end_x_ {
		direction_ *= -1;	
	}

	
	if direction_ < 0 {
		x += speed_;
	} else {
		x -= speed_;	
	}

	y += swivel_dir_;
	
	if is_player_under() && int64(random(100)) == 50 {
		locked_on_ = true;
		alarm_set(1, 60);
		direction_ = (x - obPlayer.x) / abs(x - obPlayer.x);
	}
}

if diving_ {
	if distance_to_point(target_x_, target_y_) < 15 {
		diving_ = false;
		recovering_ = true;
	}
	
	if height_ > 15 {
		height_ -= 10;
	}
	
	move_towards_point(target_x_, target_y_, 30);
}

if recovering_ {
	move_towards_point(x, initial_y_, 10);
	
	if distance_to_point(x, initial_y_) < 10 {
		y = initial_y_;
		swivel_dir_ = -1;
		recovering_ = false;
		hspeed = 0;
		vspeed = 0;
		height_ = initial_height_;
	}
	
	if height_ < initial_height_ {
		height_ += 5;	
	}
}
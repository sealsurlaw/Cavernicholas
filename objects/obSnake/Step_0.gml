event_inherited();

if x <= begin_x_ || x >= end_x_ {
	direction_ *= -1;
	swivel_dir_ *= -1;
	length_ = sprite_width;
	if direction_ < 0 {
		x += 10;
	} else {
		x -= 10;	
	}
}

length_ += swivel_dir_;
	
if direction_ < 0 {
	if swivel_dir_ < 0 {
		x += speed_*2;	 
	}
} else {
	if swivel_dir_ > 0 {
		x -= speed_*2;	 
	}
}

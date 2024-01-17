event_inherited();

if x_scale_ < 0.3 && x_scale_ > -0.3 {
	x_scale_ += x_scale_dir_ * 2;
} else {
	x_scale_ += x_scale_dir_;
}

if x_scale_ >= 1 || x_scale_ <= -1 {
	x_scale_dir_ *= -1;
}
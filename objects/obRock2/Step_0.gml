event_inherited();

if jump_height_ > 0 {
	jump_speed_ -= jump_gravity;
	jump_height_ += jump_speed_;
	jump_rotate_ += (1 / jump_speed_init_) * 180;
}
if jump_height_ < 0 {
	jump_height_ = 0;
	jump_rotate_ = 0;
	alarm_set(0, getRandomTime(120));
}

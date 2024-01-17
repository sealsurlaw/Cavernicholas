event_inherited();

if jump_height_ > 0 {
	jump_speed_ -= jump_gravity;
	jump_height_ += jump_speed_;
}
if jump_height_ < 0 {
	jump_height_ = 0;
	alarm_set(0, getRandomTime(60));
}

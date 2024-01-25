direction_ = 1;
speed_ = 5;
swivel_dir_ = -1;
locked_on_ = false;
diving_ = false;
recovering_ = false;
target_x_ = 0;
target_y_ = 0;
initial_y_ = y;
initial_height_ = 500;
height_ = initial_height_;

alarm_set(0, 30);

function is_player_under() {
	return obPlayer.x > begin_x_ && obPlayer.x < end_x_;	
}
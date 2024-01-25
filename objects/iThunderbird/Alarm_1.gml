if is_player_under() {
	target_x_ = obPlayer.x;
	target_y_ = obPlayer.y + obPlayer.sprite_height/2;
	direction_ = (x - target_x_) / abs(x - target_x_);
	diving_ = true;
}

locked_on_ = false;	
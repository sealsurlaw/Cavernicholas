event_inherited();

if rotation_ < -20 || rotation_ > 0 {
	rotation_dir_ *= -1;
}
rotation_ += rotation_dir_;

if x > room_width+sprite_xoffset {
	x = 0-sprite_width;
}

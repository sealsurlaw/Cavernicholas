event_inherited();

if rotation_ > 10 || rotation_ < 0 {
	rotation_dir_ *= -1;
}
rotation_ += rotation_dir_;

if x < 0-sprite_xoffset {
	x = room_width+sprite_width;
}

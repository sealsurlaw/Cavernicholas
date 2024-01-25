var _x_offset = 0;
if direction_ < 0 {
	_x_offset = sprite_width;	
}
draw_sprite_ext(sprite_index, 0, x+_x_offset, y+height_, direction_ * 0.7, 0.7, 0, c_black, 0.2);
draw_sprite_ext(sprite_index, 0, x+_x_offset, y, direction_, 1, 0, c_white, 1);


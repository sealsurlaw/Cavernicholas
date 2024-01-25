var _x_offset = 0;
var _y_stretch = length_-sprite_width;
if direction_ < 0 {
	_x_offset = sprite_width;
	_y_stretch *= -1;
}
draw_sprite_ext(sprite_index, 0, x+_x_offset, y, direction_+(length_-sprite_width), 1-_y_stretch, 0, c_white, 1);

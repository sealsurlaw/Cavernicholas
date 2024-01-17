var _color = c_white;
if flash_ == true {
	_color = c_silver;	
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _color, 1);
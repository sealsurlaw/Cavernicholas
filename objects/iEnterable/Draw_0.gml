var _flash_color = c_white;
if flash_ && flashing_ {
	_flash_color = c_silver;	
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _flash_color, 1.0);

if flashing_ {
	var _sp_x = x + (sprite_width / 2) - (sprite_get_width(spEnter) / 2)
	draw_sprite(spEnter, 0, _sp_x, y+70);	
}
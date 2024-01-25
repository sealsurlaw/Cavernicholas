var _flash_color = c_white;
if flash_ && flashing_ {
	_flash_color = c_silver;	
}

if flashing_ {
	draw_sprite(spBigInfo, 0, x+150, y-100);
	draw_sprite_ext(spOsageOrange, 0, x+150-(sprite_get_width(spOsageOrange)/2), y+(sprite_get_height(spOsageOrange)/2)-180, 1, 1, 0, c_white, 1.0);
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _flash_color, 1.0);

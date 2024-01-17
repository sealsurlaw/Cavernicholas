var _flash_color = c_white;
if flash_ && flashing_ {
	_flash_color = c_silver;	
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, jumpRot_, _flash_color, 1.0);

if flashing_ {
	draw_sprite(spInfo, 0, x-150, y-200);	
}
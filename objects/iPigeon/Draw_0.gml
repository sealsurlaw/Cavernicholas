if fly_away_ == false {
	var _flash_color = c_white;
	if flash_ && flashing_ {
		_flash_color = c_silver;	
	}

	if flashing_ {
		draw_sprite(spBigInfo, 0, x+(sprite_width/2), y-150);
		var _heart = global.heartsSprites[heart_index_];
		
		var _alpha = 1;
		if flash_ && heart_flash_ {
			_alpha = 0;	
		}
		draw_sprite_ext(_heart, 0, x+(sprite_width/2)-(sprite_get_width(_heart)/2), y+(sprite_get_height(_heart)/2)-270, 0.8, 0.8, 0, c_white, _alpha);
	}

	draw_sprite_ext(sprite_index, 0, x+x_offset_, y-jump_height_, 1, 1, 0, _flash_color, 1);
} else {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, rotation_, c_white, 1);	
}
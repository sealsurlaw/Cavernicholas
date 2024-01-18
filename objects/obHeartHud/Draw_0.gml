var _offsetSize = sprite_get_width(global.heartsSprites[0]);
var _displayIndex = [0, 0, 0, 0, 0, 0, 0, 0, 0];
var _length = 0
var _offset = 0;
for (var _i = 0; _i < array_length(global.hearts); ++_i) {
	if global.hearts[_i] == 1 {
		_displayIndex[_length] = _i;
		_length++;
	}
}

var _y = sprite_get_height(global.heartsSprites[0]) + 50;
for (var _i = 0; _i < _length; ++_i) {
	var _sprite = global.heartsSprites[_displayIndex[_i]];
	_offset += sprite_get_width(_sprite) + 50;
	draw_sprite_ext(_sprite, 0, room_width-_offset-10, room_height-_y+10, 1, 1, 0, c_green, 1);
	draw_sprite(_sprite, 0, room_width-_offset, room_height-_y);
}

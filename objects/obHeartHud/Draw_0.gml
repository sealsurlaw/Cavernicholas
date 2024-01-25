var _offsetSize = sprite_get_width(global.heartsSprites[0]);
var _displayIndex = [0, 0, 0, 0, 0, 0, 0, 0, 0];
var _length = 0
var _offset = 0;
for (var _i = 0; _i < array_length(global.hearts); ++_i) {
	if global.hearts[_i] >= 1 {
		_displayIndex[_length] = _i;
		_length++;
	}
}

var _y = sprite_get_height(global.heartsSprites[0]) + 50;
var _camera_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);

for (var _i = 0; _i < _length; ++_i) {
	var _sprite = global.heartsSprites[_displayIndex[_i]];
	_offset += sprite_get_width(_sprite) + 50;
	
	var _alpha = 1;
	var _color = c_white;
	if global.hearts[_displayIndex[_i]] == 2 {
		_alpha = 0.25;
		_color = c_dkgrey
	}
	draw_sprite_ext(_sprite, 0, _camera_x-_offset-10, _camera_y-_y+10, 1, 1, 0, c_dkgrey, _alpha);
	draw_sprite_ext(_sprite, 0, _camera_x-_offset, _camera_y-_y, 1, 1, 0, _color, _alpha);
}

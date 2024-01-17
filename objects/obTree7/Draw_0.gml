var _x_scale = (sprite_width-(squish_*2)) / sprite_width;
var _y_scale = (sprite_height+squish_) / sprite_height;

draw_sprite_ext(sprite_index, 0, x+(squish_), y-squish_, _x_scale, _y_scale, 0, c_white, 1);
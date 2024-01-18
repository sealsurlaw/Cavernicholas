event_inherited();

var _prev_x = x;
var _prev_y = y;
var _prev_image = image_index;

var _speed_major = 6;
var _speed_minor = 2;
if global.can_move == true {
	if is_left_held() {
		y -= _speed_minor;
		x -= _speed_major;
		image_index = 2
	} else if is_right_held() {
		y += _speed_minor;
		x += _speed_major;
		image_index = 0;
	} else if is_up_held() {
		y -= _speed_major;
		x += _speed_minor;
		image_index = 3
	} else if is_down_held() {
		y += _speed_major;
		x -= _speed_minor;
		image_index = 1;
	}

	if place_free(x, y) == false || is_outside() {
		x = _prev_x;
		y = _prev_y;
		image_index = _prev_image;
	}
	
	spin_ = 0;
}

if global.is_hurt == false && place_meeting(x, y, iHurtable) == true {
	global.is_hurt = true;
	global.can_move = false;
}

if global.is_hurt == true {
	image_index = 4;
	spin_ -= 8;
	move_towards_point(obHurtBackTo.x, obHurtBackTo.y, 6);
	depth = -100;
}

if place_meeting(x, y, obHurtBackTo) == true {
	global.is_hurt = false;
	global.can_move = true;
	image_index = 0;
	vspeed = 0;
	hspeed = 0;
}

event_inherited();

if global.can_move && place_meeting(x, y, obPlayer) == true {
	global.hearts[heartIndex_] = 1;
}

if global.hearts[heartIndex_] > 0 {
	instance_destroy();	
}

if dim_ == true {
	alpha_ -= 0.03;	
	x_scale_ -= 0.01;
} else {
	alpha_ += 0.06;
	x_scale_ += 0.02
}
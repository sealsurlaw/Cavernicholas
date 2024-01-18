if variable_global_exists("can_move") == false {
	global.can_move = true;	
}
if variable_global_exists("is_hurt") == false {
	global.is_hurt = false;	
}

image_speed = 0;
spin_ = 0;

function is_left_held() {
	return keyboard_check(vk_left) || keyboard_check(ord("A"));
}

function is_right_held() {
	return keyboard_check(vk_right) || keyboard_check(ord("D"));
}

function is_up_held() {
	return keyboard_check(vk_up) || keyboard_check(ord("W"));
}

function is_down_held() {
	return keyboard_check(vk_down) || keyboard_check(ord("S"));
}

function is_outside() {
	return x - sprite_xoffset + sprite_width > room_width ||
	       x - sprite_xoffset < 0 ||
		   y - sprite_yoffset < 0 ||
		   y - sprite_yoffset + sprite_height > room_height;
}

layer_create(-1000, "hud");
instance_create_layer(0, 0, "hud", obHeartHud);

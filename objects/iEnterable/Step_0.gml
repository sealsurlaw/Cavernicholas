event_inherited();

flashing_ = global.can_move == true && distance_to_object(obPlayer) < 25;
	
if flashing_ && keyboard_check(vk_enter) {
	global.last_room = room;
	room_goto(goto_room_);	
}
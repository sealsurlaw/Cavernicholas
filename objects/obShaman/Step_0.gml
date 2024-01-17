event_inherited();

jumpRot_ += jumpDir_;

flashing_ = distance_to_object(obPlayer) < 25;
	
if flashing_ && keyboard_check(vk_enter) {
	room_goto(rmDream);	
}
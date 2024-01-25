if audio_is_playing(muShamansHouse) == false {
	audio_stop_all();
	audio_play_sound(muShamansHouse, 1, true);
}

var _down_room = rmVillage;

global.down_room  = _down_room;

global.placement = {};
struct_set(global.placement, room_get_name(_down_room),  [672, 736]);

if variable_global_exists("last_room") == true {
	show_debug_message(struct_get(global.placement, room_get_name(global.last_room)));
	obPlayer.x = struct_get(global.placement,room_get_name(global.last_room))[0]
	obPlayer.y = struct_get(global.placement,room_get_name(global.last_room))[1]
}

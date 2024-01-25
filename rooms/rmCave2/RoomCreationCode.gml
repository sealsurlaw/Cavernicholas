if audio_is_playing(muCave2) == false {
	audio_stop_all();
	audio_play_sound(muCave2, 1, true);	
}

var _left_room = rmCave1;
var _right_room = rmVillage;
var _up_room = rmVillage;
var _down_room = rmVillage;

global.left_room  = _left_room;
global.right_room = _right_room;
global.up_room    = _up_room;
global.down_room  = _down_room;

global.placement = {};
struct_set(global.placement, room_get_name(_left_room),  [224, 1792]);
struct_set(global.placement, room_get_name(_right_room), [0, 0]);
struct_set(global.placement, room_get_name(_up_room),    [0, 0]);
struct_set(global.placement, room_get_name(_down_room),  [0, 0]);

if variable_global_exists("last_room") == true {
	show_debug_message(struct_get(global.placement, room_get_name(global.last_room)));
	obPlayer.x = struct_get(global.placement,room_get_name(global.last_room))[0]
	obPlayer.y = struct_get(global.placement,room_get_name(global.last_room))[1]
}

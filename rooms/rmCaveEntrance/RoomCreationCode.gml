if audio_is_playing(muCaveEntrance) == false {
	audio_stop_all();
	audio_play_sound(muCaveEntrance, 1, true);	
}

var _left_room = rmForest1;
var _right_room = rmForest2;
var _up_room = rmCave1;
var _down_room = rmForest1;

global.left_room  = _left_room;
global.right_room = _right_room;
global.up_room    = _up_room;
global.down_room  = _down_room;

global.placement = {};
struct_set(global.placement, room_get_name(_left_room),  [256, 1760]);
struct_set(global.placement, room_get_name(_right_room), [1760, 1440]);
struct_set(global.placement, room_get_name(_up_room),    [1024, 1088]);
struct_set(global.placement, room_get_name(_down_room),  [1056, 1696]);

if variable_global_exists("last_room") == true {
	show_debug_message(struct_get(global.placement, room_get_name(global.last_room)));
	obPlayer.x = struct_get(global.placement,room_get_name(global.last_room))[0]
	obPlayer.y = struct_get(global.placement,room_get_name(global.last_room))[1]
}

event_inherited();

if place_meeting(x, y, obPlayer) == true {
	global.last_room = room;
	
	// Left
	if x - 64 < 0 {
		room_goto(global.left_room);	
	}
	// Up
	else if y - 64 < 0 {
		room_goto(global.up_room);	
	}
	// Right
	else if x + sprite_width + 64 > room_width {
		room_goto(global.right_room);	
	}
	// Down
	else if y + sprite_height + 64 > room_height {
		room_goto(global.down_room);	
	}
}
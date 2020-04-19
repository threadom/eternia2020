if (current_time - create_time > wait_time) {
	debug("obj_nextroom_timer change room to " + room_get_name(next_room));
	
	room_goto(next_room);
}
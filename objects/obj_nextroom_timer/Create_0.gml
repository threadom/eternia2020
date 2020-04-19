debug("Create obj_nextroom_timer");

create_time = current_time;

if (variable_global_exists("skip_splash")) {
	if (global.skip_splash) {
		room_goto(next_room);
	}
}
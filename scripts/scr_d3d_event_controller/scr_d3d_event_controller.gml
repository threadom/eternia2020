if (gamepad_is_supported()) {
	if (global.gamepad != 0) {
		scr_d3d_event_gamepad(global.gamepad);
	}
	else {
		var maxpads = gamepad_get_device_count();
		for (var i = 0; i < maxpads; i++) {
			if gamepad_is_connected(i) {
				scr_d3d_event_gamepad(i);
			}
		}
	}
}
//else {
	scr_d3d_event_keyboard();
//}
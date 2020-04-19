global.micro_image += ((current_time - global.old_refresh) / 100);
global.room_image = global.micro_image mod 7;
if (global.room_image >= 8) {
	global.micro_image = 0;
}
global.old_refresh = current_time;
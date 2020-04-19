scr_window_default();
scr_window_config();

var _resolution_w = global.window[? "resolution_w"];
var _resolution_h = global.window[? "resolution_h"];
var _view_w = global.window[? "viewport_w"];
var _view_h = global.window[? "viewport_h"];
var _fullscreen = global.window[? "fullscreen"];
var _v_sync = global.window[? "v_sync"];
var _anti_aliasing = global.window[? "anti_aliasing"];

//display_reset(_anti_aliasing, _v_sync);
display_reset(_anti_aliasing, _v_sync);

if _fullscreen && !window_get_fullscreen() {
	window_set_fullscreen(true);
	display_set_gui_size(display_get_width(),display_get_height());
}
else {
	var _offset_x = (display_get_width() - _resolution_w)/2;
	var _offset_y = (display_get_height() - _resolution_h)/2;
	window_set_position(_offset_x,_offset_y);
	window_set_size(_resolution_w,_resolution_h);
}

view_enabled = true;
view_camera[0] = camera_create_view(0, 0, _view_w, _view_h);
view_set_visible(0, true);
surface_resize(application_surface, _resolution_w, _resolution_h);
display_set_gui_size(_view_w, _view_h)
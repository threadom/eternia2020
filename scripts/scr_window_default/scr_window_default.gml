global.window = ds_map_create();
global.window[? "fullscreen"] = false;
global.window[? "borderless"] = false;
global.window[? "resolution_w"] = display_get_width() * 0.85;
global.window[? "resolution_h"] = display_get_height() * 0.85;
global.window[? "viewport_w"] = 1920;
global.window[? "viewport_h"] = 1080;
global.window[? "anti_aliasing"] = 0;
global.window[? "v_sync"] = false;
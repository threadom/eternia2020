var _width = global.window[? "viewport_w"];
var _height = global.window[? "viewport_h"];

// View
view_enabled = true;
view_camera[0] = camera_create_view(0, 0, _width, _height);
view_set_visible(0, true);
surface_resize(application_surface, window_get_width(), window_get_height());
//display_set_gui_size(_width, _height)

// Camera
global.camera = camera_create();
global.projmat = fun_matrix3d_perspective(45, _width/_height, 1, 16384);
camera_set_proj_mat(global.camera, global.projmat);
view_set_camera(0, global.camera);
//camera_set_update_script(global.camera, scr_d3d_draw_camera());

// Layers
layer_force_draw_depth(true, 0);
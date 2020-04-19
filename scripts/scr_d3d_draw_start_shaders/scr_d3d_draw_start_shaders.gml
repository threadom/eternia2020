// Shader TV Effect
global.shader_fog = false;

global.fog_r = 0.9;
global.fog_g = 0.9;
global.fog_b = 0.9;
global.fog_near = 0;
global.fog_height = 0.5;
global.fog_falloff = 6000;

u_fog_colour = shader_get_uniform( shd_fog, "u_fog_colour");
u_fog_height = shader_get_uniform( shd_fog, "u_fog_height");
u_camera_position = shader_get_uniform( shd_fog, "u_camera_position");

if (global.shader_fog) {
	shader_set(shd_d3d_fog);
	shader_set_uniform_f(u_fog_colour, global.fog_r,global.fog_g,global.fog_b);
	shader_set_uniform_f(u_fog_height, global.fog_near,global.fog_height,global.fog_falloff);
	shader_set_uniform_f(u_camera_position, obj_camera._x, obj_camera._y, obj_camera._z);
	//surface_set_target(application_surface);
	draw_surface(application_surface, 0, 0);
	//surface_reset_target();
	shader_reset();
	debug("draw shader fog effect");
}
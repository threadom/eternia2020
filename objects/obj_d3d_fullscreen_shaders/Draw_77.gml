if (global.shader_fullscreen_fade_speed != 0) or (global.shader_fullscreen_fade_alpha < 1) {
	shader_set(shd_fullscreen_fade);
	shader_set_uniform_f(u_fade_colour, global.shader_fullscreen_fade_r, global.shader_fullscreen_fade_g, global.shader_fullscreen_fade_b);
	shader_set_uniform_f(u_fade_alpha, global.shader_fullscreen_fade_alpha);
	draw_surface(application_surface, 0, 0);
	shader_reset();
	//debug("draw shader fade effect");
}
else if (global.shader_fullscreen_tiltshift) {
	shader_set(shd_fullscreen_tiltshift);
	shader_set_uniform_f(u_tiltshift_resolution, window_get_width(), window_get_height());
	draw_surface(application_surface, 0, 0);
	shader_reset();
	//debug("draw shader tiltshift effect");
}
else if (global.shader_fullscreen_tv) {
	shader_set(shd_fullscreen_tv);
	shader_set_uniform_f(u_tv_seconds, seconds);
	draw_surface(application_surface, 0, 0);
	shader_reset();
	//debug("draw shader tv effect");
}
else if (!global.shader_fullscreen_tv) && (!global.shader_fullscreen_tiltshift) {
	shader_set(shd_fullscreen_draw);
	draw_surface(application_surface, 0, 0);
	shader_reset();
}
application_surface_draw_enable(false);

// Shader Fade Effect
global.shader_fullscreen_fade_r = 1;
global.shader_fullscreen_fade_g = 1;
global.shader_fullscreen_fade_b = 1;
global.shader_fullscreen_fade_speed = 0;
global.shader_fullscreen_fade_alpha = 1;

u_fade_colour = shader_get_uniform(shd_fullscreen_fade, "u_fade_colour");
u_fade_alpha = shader_get_uniform(shd_fullscreen_fade, "u_fade_alpha");

// Shader TiltShift Effect
global.shader_fullscreen_tiltshift = false;
u_tiltshift_resolution = shader_get_uniform( shd_fullscreen_tiltshift, "u_resolution");

// Shader TV Effect
global.shader_fullscreen_tv = false;
u_tv_seconds = shader_get_uniform( shd_fullscreen_tv, "u_seconds");

seconds = 0;
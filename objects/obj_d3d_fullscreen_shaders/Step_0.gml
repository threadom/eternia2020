seconds += 0.01;
if ( seconds >= 65000 ) seconds = 0;

if ( global.shader_fullscreen_fade_alpha > 1 ) global.shader_fullscreen_fade_speed = 0;
if ( global.shader_fullscreen_fade_alpha < 0 ) global.shader_fullscreen_fade_speed = 0;
global.shader_fullscreen_fade_alpha += global.shader_fullscreen_fade_speed;
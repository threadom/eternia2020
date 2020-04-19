if (global.debug_enable) {
	gpu_set_texfilter(true);
	draw_set_colour(c_white);
	draw_set_alpha(0.75);
	draw_set_font(font_OpenSans_11);
	for (var i = 0; i < 56; i++;) {
	   draw_text(48, 44 + (i * 18), global.array_debug[i]);
	}
	draw_set_alpha(1);
	gpu_set_texfilter(false);
}
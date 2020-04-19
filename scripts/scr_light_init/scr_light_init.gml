draw_set_lighting(true);
draw_light_define_ambient(make_color_hsv(0,0,63));
draw_light_define_point(1, 0, room_height, room_width / 2, room_width * 2, c_white);
draw_light_enable(1, true);
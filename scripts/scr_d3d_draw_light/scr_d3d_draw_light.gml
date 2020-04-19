var light_height = mean(room_width, room_height) * 4;
var light_power = mean(room_width, room_height) * 4;
var light_color = c_white;


draw_light_define_point(0, room_width / 2, room_width / 2, light_height, light_power, light_color);
draw_light_enable(0, true);

draw_light_define_point(1, 0, 0, light_height, light_power, light_color);
draw_light_enable(1, true);

draw_light_define_point(2, 0, room_width, light_height, light_power, light_color);
draw_light_enable(2, true);

draw_light_define_point(3, room_width, 0, light_height, light_power, light_color);
draw_light_enable(3, true);

draw_light_define_point(4, room_width, room_width, light_height, light_power, light_color);
draw_light_enable(4, true);

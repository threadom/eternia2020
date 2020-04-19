l_add = keyboard_check(vk_add);
l_sub = keyboard_check(vk_subtract);
l_multiply = keyboard_check(vk_multiply);
l_divide = keyboard_check(vk_divide);
l_pageup = keyboard_check(vk_pageup);
l_pagedown  = keyboard_check(vk_pagedown);

if (l_add || l_sub || l_pageup || l_pagedown || l_divide || l_multiply) {
	if (l_add) { global.obj_camera._distance = global.obj_camera._distance * 1.01; }
	if (l_sub) { global.obj_camera._distance = global.obj_camera._distance * 0.99; }
	global.obj_camera._distance = clamp(global.obj_camera._distance,2,10000);

	if (l_pageup) { global.obj_camera._angle = global.obj_camera._angle * 1.01; }
	if (l_pagedown) { global.obj_camera._angle = global.obj_camera._angle * 0.99; }
	global.obj_camera._angle = clamp(global.obj_camera._angle,-90,90);
		
	//show_debug_message(string(global.obj_camera._rotation));
	if (l_divide) { global.obj_camera._rotation -= 1; }
	if (l_multiply) { global.obj_camera._rotation += 1; }
	if (global.obj_camera._rotation > 360) { global.obj_camera._rotation -= 360; }
	if (global.obj_camera._rotation < 0) { global.obj_camera._rotation += 360; }

	global.obj_camera._dirty = true;
}
var _pad = argument0;

var lh_axis = gamepad_axis_value(_pad, gp_axislh);
var lv_axis = gamepad_axis_value(_pad, gp_axislv);
var l_stick = gamepad_button_check(_pad, gp_stickl);
var l_stick_pressed = gamepad_button_check_pressed(_pad, gp_stickl);

var rh_axis = gamepad_axis_value(_pad, gp_axisrh);
var rv_axis = gamepad_axis_value(_pad, gp_axisrv);
var r_stick = gamepad_button_check(_pad, gp_stickr);
var r_stick_pressed = gamepad_button_check_pressed(_pad, gp_stickr);

//if (l_stick) { datas[? "moveSpeed"] = 7; }
//else { datas[? "moveSpeed"] = 3.5; }

if (lv_axis < -0.15) or (lv_axis > 0.15) {
	//if (lv_axis > 0.15) { dir = DIR_UP; }
	//if (lv_axis < -0.15) { dir = DIR_DOWN; }
	global.obj_camera._to_y += (lv_axis * 10);// * datas[? "moveSpeed"];
	global.obj_camera._dirty = true;
	show_debug_message(global.obj_camera._from_x);
}
		
if (lh_axis < -0.15) or (lh_axis > 0.15) {
	//if (lh_axis > 0.15) { dir = DIR_RIGHT; }
	//if (lh_axis < -0.15) { dir = DIR_LEFT; }
	global.obj_camera._to_x += (lh_axis * 10);// * datas[? "moveSpeed"];
	global.obj_camera._dirty = true;
	show_debug_message(global.obj_camera._from_x);
}
	
//var vitesse = sqrt(sqr(abs(dx))+sqr(abs(dy)))
//if (vitesse > 0.10) {
//	var distance_a_atteindre = global.inital_distance * (1 + (vitesse / 20));
// 	global.obj_camera._distance = global.obj_camera._distance * 0.98 + distance_a_atteindre * 0.02
//}
//else {
// 	global.obj_camera._distance = global.obj_camera._distance * 0.99 + global.inital_distance * 0.01
//}

//if (r_stick_pressed) {
//	if (global.viewset_mode == SET_LOCKED) { global.viewset_mode = SET_ANGLE; }
//	else if (global.viewset_mode == SET_ANGLE) { global.viewset_mode = SET_DISTANCE; }
//	else if (global.viewset_mode == SET_DISTANCE) { global.viewset_mode = SET_LOCKED; }
//}
//else {
	//if (rv_axis < -0.15) or (rv_axis > 0.15) {
		//if (global.viewset_mode == SET_DISTANCE) {
		//	global.obj_camera._distance = global.obj_camera._distance * (1 - rv_axis/50)
		//	global.obj_camera._distance = clamp(global.obj_camera._distance,100,2500)
		//}
		//else if (global.viewset_mode == SET_ANGLE) {
		//	global.obj_camera._angle = global.obj_camera._angle + rv_axis
		//	global.obj_camera._angle = clamp(global.obj_camera._angle,11.25,78.75);
		//}
	//}
	if (rh_axis < -0.15) or (rh_axis > 0.15) {
		global.obj_camera._rotation += rh_axis;
		if (global.obj_camera._rotation > 360) { global.obj_camera._rotation -= 360; }
		if (global.obj_camera._rotation < 0) { global.obj_camera._rotation += 360; }
		global.obj_camera._dirty = true;
	}
//}



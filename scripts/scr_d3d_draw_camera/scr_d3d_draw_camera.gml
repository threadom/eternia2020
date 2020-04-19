if (global.obj_camera._dirty) {
	global.obj_camera._dirty = false;
	
	global.obj_camera._from_x = global.obj_camera._to_x + global.obj_camera._distance * dcos(global.obj_camera._angle) * dsin(global.obj_camera._rotation);
	global.obj_camera._from_y = global.obj_camera._to_y + global.obj_camera._distance * dcos(global.obj_camera._angle) * dcos(global.obj_camera._rotation);
	global.obj_camera._from_z = global.obj_camera._to_z + global.obj_camera._distance * dsin(global.obj_camera._angle);

	show_debug_message(global.obj_camera._from_x);

	var _from = fun_vector3d_new(global.obj_camera._from_x, global.obj_camera._from_y, global.obj_camera._from_z);
	var _to = fun_vector3d_new(global.obj_camera._to_x, global.obj_camera._to_y, global.obj_camera._to_z);
	var _direction = fun_vector3d_new(dsin(global.obj_camera._rotation), dcos(global.obj_camera._rotation), 0);

	global.viewmat = fun_matrix3d_lookat(_from, _to, _direction);
	camera_set_view_mat(global.camera, global.viewmat);
}
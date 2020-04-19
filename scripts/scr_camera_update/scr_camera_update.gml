//show_debug_message("Camera Update Start : " + date_time_string(date_current_datetime()));
var _from_x = global.camera_to_x+global.camera_distance*dcos(global.camera_angle)*dsin(global.camera_rotation)
var _from_y = global.camera_to_y+global.camera_distance*dcos(global.camera_angle)*dcos(global.camera_rotation)
var _from_z = global.camera_to_z+global.camera_distance*dsin(global.camera_angle)
var _from = fun_vector3d_new(_from_x,_from_y,_from_z)
global.viewmat = fun_matrix3d_lookat(_from,fun_vector3d_new(global.camera_to_x,global.camera_to_y,global.camera_to_z),fun_vector3d_new(dsin(global.camera_rotation),dcos(global.camera_rotation),0));
camera_set_view_mat(global.camera, global.viewmat);
//show_debug_message("Camera Update Done : " + date_time_string(date_current_datetime()));
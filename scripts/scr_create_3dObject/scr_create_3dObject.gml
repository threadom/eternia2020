var _object = argument0;

if !is_undefined(_object) {
	with (_object) {
		//show_debug_message(image_xscale);
		var _x = bbox_left;
		var _y = bbox_bottom;
		var _z = z;
		var _w = sprite_width;
		var _h = sprite_height;
		var _a = angle;
		var _s = sprite_index;
		var _i = image_index;
	
		var pi_rad = pi / 180;
		var y_h = cos(_a*pi_rad)*_h;
		var z_h = sin(_a*pi_rad)*_h;
		
		var x1 = _x;
		var y1 = _y;
		var x2 = _x + _w;
		var y2 = _y - y_h;
		var z1 = _z;
		var z2 = _z + z_h;

		vertex_format_begin();
		vertex_format_add_position_3d();
		vertex_format_add_color();
		vertex_format_add_texcoord();
		vformat = vertex_format_end();

		var a = sprite_get_uvs(_s,0);
	
		if (!ds_map_exists(global.objects, id)) {
			global.objects[? id] = vertex_create_buffer();
			vertex_begin(global.objects[? id],vformat);
			vertex_position_3d(global.objects[? id], x1, y1, z1);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[0],a[3]);
			vertex_position_3d(global.objects[? id], x2, y1, z1);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[2],a[3]);
			vertex_position_3d(global.objects[? id], x2, y2, z2);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[2],a[1]);
			vertex_position_3d(global.objects[? id], x1, y1, z1);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[0],a[3]);
			vertex_position_3d(global.objects[? id], x2, y2, z2);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[2],a[1]);
			vertex_position_3d(global.objects[? id], x1, y2, z2);
			vertex_color(global.objects[? id],c_white,1);
			vertex_texcoord(global.objects[? id],a[0],a[1]);
			vertex_end(global.objects[? id]);
			vertex_freeze(global.objects[? id]);
		}

		vertex_submit(global.objects[? id],pr_trianglestrip,sprite_get_texture(_s,_i));
	}
}
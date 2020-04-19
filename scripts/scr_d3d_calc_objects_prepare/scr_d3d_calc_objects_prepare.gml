var object = argument0;

with (object) {
	var px = x div global.chunk_size;
	var py = y div global.chunk_size;
	var h = tilemap_get(global.heightmap,x/16,y/16);
	var z = h * 8;
	
	_x3d = bbox_left;
	_y3d = bbox_bottom;
	_z3d = z;
	var _w = sprite_width;
	var _h = sprite_height;
	var _a = 90;
	var _s = sprite_index;
	
	var pi_rad = pi / 180;
	var y_h = cos(_a*pi_rad)*_h;
	var z_h = sin(_a*pi_rad)*_h;
		
	var x1 = _x3d;
	var y1 = _y3d;
	var x2 = _x3d + _w;
	var y2 = _y3d - y_h;
	var z1 = _z3d;
	var z2 = _z3d + z_h;

	scr_d3d_vertexformat();
	
	var a = sprite_get_uvs(_s,0);
	
	// Define vertex format
	vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_color();
	vertex_format_add_texcoord();
	global.vformat = vertex_format_end();
	
	drawable_vb = vertex_create_buffer();
	vertex_begin(drawable_vb, global.vformat);
	vertex_position_3d(drawable_vb, x1, y1, z1);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[0],a[3]);
	vertex_position_3d(drawable_vb, x2, y1, z1);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[2],a[3]);
	vertex_position_3d(drawable_vb, x2, y2, z2);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[2],a[1]);
	vertex_position_3d(drawable_vb, x1, y1, z1);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[0],a[3]);
	vertex_position_3d(drawable_vb, x2, y2, z2);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[2],a[1]);
	vertex_position_3d(drawable_vb, x1, y2, z2);
	vertex_color(drawable_vb,c_white,1);
	vertex_texcoord(drawable_vb,a[0],a[1]);
	vertex_end(drawable_vb);
	vertex_freeze(drawable_vb);
}
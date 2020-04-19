var xx = argument0;
var yy = argument1;
var hh = argument2;
var x2 = xx * hh;
var y2 = yy * hh;
var h2 = hh / 2;
var aHeights = argument3;

var uid = string(xx) + "_" + string(yy)
	
if (!ds_map_exists(global.map_3dTiles, uid)) {
	//show_debug_message(uid + " xx:" + string(x2 - h2) + " yy:" + string(y2 - h2) + " height:" + string(aHeights[0] * h2));
	
	// FORMAT
	vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_color();
	//vertex_format_add_texcoord();
	vformat = vertex_format_end();
	// BEGIN
	global.map_3dTiles[? uid] = vertex_create_buffer();
	vertex_begin(global.map_3dTiles[? uid],vformat);
	// TOP LEFT -> TOP
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2 - h2, aHeights[0] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2 - h2, aHeights[1] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[2],a[3]);
	// TOP -> TOP RIGHT
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2 - h2, aHeights[1] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2 - h2, aHeights[2] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[0],a[1]);
	// TOP RIGHT -> RIGHT
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2 - h2, aHeights[2] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2, aHeights[5] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[0],a[3]);
	// RIGHT -> BOTTOM RIGHT
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2, aHeights[5] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2 +h2, aHeights[8] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[2],a[3]);
	// BOTTOM RIGHT -> BOTTOM
	vertex_position_3d(global.map_3dTiles[? uid], x2 + h2, y2 + h2, aHeights[8] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2 + h2, aHeights[7] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[2],a[1]);
	// BOTTOM -> BOTTOM LEFT 
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2 + h2, aHeights[7] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2 + h2, aHeights[6] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[0],a[1]);
	// BOTTOM LEFT -> LEFT
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2 + h2, aHeights[6] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2, aHeights[3] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[2],a[3]);
	// LEFT -> TOP LEFT 
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2, aHeights[3] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2 - h2, y2 - h2, aHeights[0] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	vertex_position_3d(global.map_3dTiles[? uid], x2, y2, aHeights[4] * h2);
	vertex_color(global.map_3dTiles[? uid],c_ltgray,1);
	//vertex_texcoord(global.map_3dTiles[? uid],a[2],a[3]);
	// END
	vertex_end(global.map_3dTiles[? uid]);
	vertex_freeze(global.map_3dTiles[? uid]);
}

vertex_submit(global.map_3dTiles[? uid],pr_trianglestrip,-1);
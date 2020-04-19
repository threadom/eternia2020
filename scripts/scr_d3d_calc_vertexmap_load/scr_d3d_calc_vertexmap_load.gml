debug("d3d calc vertex of map :: load");

var _room = room_get_name(room);

scr_d3d_vertexformat();

for (var cy=0;cy<(global.room_numtile_height/global.chunk_numtile_size);cy++) { // (4096 / 8) : (1024 / 8)
	for (var cx=0;cx<(global.room_numtile_width/global.chunk_numtile_size);cx++) { // 128 // 16	
		var _chunk = "x" + string(cx) + "y" + string(cy);
		var _room_chunk = _room + "_" + _chunk;
		var _file = _room + "/vb/" + _chunk + "_vb.dat";
		
		debug("d3d calc vertex of map :: load " + _file);
		
		var buffer_vertex = buffer_load(_file);	
		global.vertexmap[? _room_chunk] = vertex_create_buffer_from_buffer(buffer_vertex, global.vformat);
	}
}
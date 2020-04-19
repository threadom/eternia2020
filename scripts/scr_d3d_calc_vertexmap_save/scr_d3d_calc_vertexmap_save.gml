var _room = room_get_name(room);
for (var cy=0;cy<(global.room_numtile_height/global.chunk_numtile_size);cy++) { // (4096 / 8) : (1024 / 8)
	for (var cx=0;cx<(global.room_numtile_width/global.chunk_numtile_size);cx++) { // 128 // 16
		var _chunk = "x" + string(cx) + "y" + string(cy);
		var _room_chunk = _room + "_" + _chunk;
		var _file = _room + "/vb/" + _chunk + "_vb.dat";
		
		var buffer_vertex = buffer_create_from_vertex_buffer(global.vertexmap[? _room_chunk], buffer_grow, 1);
		//var cmpBuff = buffer_compress(buffer_vertex,0,buffer_get_size(buffer_vertex));
		if (!directory_exists(_room)) { directory_create(_room); }
		//buffer_save(cmpBuff,_room + "/" + _chunk +"_vb.dat");
		buffer_save(buffer_vertex,_file);
		buffer_delete(buffer_vertex);
		//buffer_delete(cmpBuff);
	}
}
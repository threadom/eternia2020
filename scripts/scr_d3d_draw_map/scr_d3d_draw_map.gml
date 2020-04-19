//debug("d3d draw map");
var _room = room_get_name(room);
for (var cy=0;cy<(global.room_numtile_height/global.chunk_numtile_size);cy++) { // (4096 / 8) : (1024 / 8)
	for (var cx=0;cx<(global.room_numtile_width/global.chunk_numtile_size);cx++) { // 128 // 16
		var _chunk = "x" + string(cx) + "y" + string(cy);
		var _room_chunk = _room + "_" + _chunk;
		
		vertex_submit(global.vertexmap[? _room_chunk],pr_trianglelist,sprite_get_texture(global.texturemap[? _room_chunk],floor(global.room_image)));
	}
}
debug("d3d calc texture of map :: begin");

var _room = room_get_name(room);

for (var cy=0;cy<(global.room_numtile_height/global.chunk_numtile_size);cy++) { // (4096 / 8) : (1024 / 8)
	for (var cx=0;cx<(global.room_numtile_width/global.chunk_numtile_size);cx++) { // 128 // 16
		var _chunk = "x" + string(cx) + "y" + string(cy);
		var _room_chunk = _room + "_" + _chunk;
		var _file = _room + "/tx/" + _chunk + "_tx.png";
		if (!file_exists(_file)) {
			debug("d3d calc texture of map :: generate " + _file);

			ii=0;
			var surf = surface_create(global.chunk_size, global.chunk_size);
			surface_set_target(surf);
			draw_clear_alpha(c_black, 0);
			for (var ii=0;ii<=7;ii++) {
				for (var i=0;i<9;i++) {
					if (global.tm[i] > 0) {
						for (var yy=cy*global.chunk_numtile_size;yy<(cy+1)*global.chunk_numtile_size;yy+=2) {
							for (var xx=cx*global.chunk_numtile_size;xx<(cx+1)*global.chunk_numtile_size;xx+=2) {
								var texture_id = tilemap_get(global.tm[i],xx div 2,yy div 2);
								if (texture_id > 0) {
									var ty = texture_id div global.texture_numtile_width;
									var tx = texture_id - (ty * global.texture_numtile_width);
									var px = ((xx-(cx*global.chunk_numtile_size))/2)*global.texture_tile_size;
									var py = ((yy-(cy*global.chunk_numtile_size))/2)*global.texture_tile_size;
									draw_sprite_part(asset_get_index("spr_" + tileset_get_name(global.ts[i])), ii, tx*global.texture_tile_size, ty*global.texture_tile_size, global.texture_tile_size, global.texture_tile_size, px, py);
								}
							}
						}
					}
				}
				if (!ds_map_exists(global.texturemap, _room_chunk)) {
					global.texturemap[? _room_chunk] = sprite_create_from_surface(surf, 0, 0, global.chunk_size, global.chunk_size, false, false, 0, 0);
				}
				else {
					sprite_add_from_surface(global.texturemap[? _room_chunk], surf, 0, 0, global.chunk_size, global.chunk_size, false, false);
				}
			}
			surface_reset_target();
			surface_free(surf);
			
			sprite_save_strip(global.texturemap[? _room_chunk], _file);
		}
		else {
			debug("d3d calc texture of map :: file " + _file);
			global.texturemap[? _room_chunk] = sprite_add(_file, 8, false, false, 0, 0);
		}
	}
}


// Calculation of texture uv placement of chunk texture
debug("d3d calc texture of map :: uv");

var sprite_uvs = sprite_get_uvs(global.texturemap[? _room_chunk],0);
var ww = global.chunk_numtile_size;
var hh = global.chunk_numtile_size;

for (var yy=0;yy<hh;yy++) {
	//debug("d3d calc texture of map :: uv ("+string(yy)+"/"+string(hh)+")");
	for (var xx=0;xx<ww;xx++) {
		var l_uvList = ds_list_create();
		
		var tx = ((sprite_uvs[2]-sprite_uvs[0]) / ww) * xx + sprite_uvs[0];
		var ty = ((sprite_uvs[3]-sprite_uvs[1]) / hh) * yy + sprite_uvs[1];
		var tw = (sprite_uvs[2]-sprite_uvs[0]) / ww;
		var th = (sprite_uvs[3]-sprite_uvs[1]) / hh;
					
		l_uvList[| 0] = scr_d3d_uv(sprite_uvs,tx,ty);
		l_uvList[| 1] = scr_d3d_uv(sprite_uvs,tx+tw/2,ty);
		l_uvList[| 2] = scr_d3d_uv(sprite_uvs,tx+tw,ty);
		l_uvList[| 3] = scr_d3d_uv(sprite_uvs,tx,ty+th/2);
		l_uvList[| 4] = scr_d3d_uv(sprite_uvs,tx+tw/2,ty+th/2);
		l_uvList[| 5] = scr_d3d_uv(sprite_uvs,tx+tw,ty+th/2);
		l_uvList[| 6] = scr_d3d_uv(sprite_uvs,tx,ty+th);
		l_uvList[| 7] = scr_d3d_uv(sprite_uvs,tx+tw/2,ty+th);
		l_uvList[| 8] = scr_d3d_uv(sprite_uvs,tx+tw,ty+th);
		
		global.l_uv[xx,yy] = l_uvList;
	}
}
debug("d3d calc texture of map :: end");
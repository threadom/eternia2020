debug("d3d calc vertex of map :: begin");

var _room = room_get_name(room);
var ww = global.room_numtile_width;
var hh = global.room_numtile_height;
var w2 = ww*2;
var h2 = hh*2;

var s1 = 8;
var s2 = 16;

if (!directory_exists(_room + "/vb")) {
	debug("d3d calc vertex of map :: vertex");

	var h = array_create(9);
	var aHeights = array_create(9);
	for (var yy=0;yy<hh;yy++) {
		//debug("d3d calc vertex of map :: vertex ("+string(yy)+"/"+string(hh)+")");
		for (var xx=0;xx<ww;xx++) {
			h[0] = tilemap_get(global.heightmap,xx-1,yy-1);
			h[1] = tilemap_get(global.heightmap,xx+0,yy-1);
			h[2] = tilemap_get(global.heightmap,xx+1,yy-1);
			h[3] = tilemap_get(global.heightmap,xx-1,yy+0);
			h[4] = tilemap_get(global.heightmap,xx+0,yy+0);
			h[5] = tilemap_get(global.heightmap,xx+1,yy+0);
			h[6] = tilemap_get(global.heightmap,xx-1,yy+1);
			h[7] = tilemap_get(global.heightmap,xx+0,yy+1);
			h[8] = tilemap_get(global.heightmap,xx+1,yy+1);
		
			if (xx-1 < 0) { h[0] = -1; h[3] = -1; h[6] = -1; }
			if (xx+1 >= ww) { h[2] = -1; h[5] = -1; h[8] = -1; }
			if (yy-1 < 0) { h[0] = -1; h[1] = -1; h[2] = -1; }
			if (yy+1 >= hh) { h[6] = -1; h[7] = -1; h[8] = -1; }
		
			//aHeights[0] = scr_d3d_average(h[0], h[1], h[3], h[4]); //scr_d3d_average
			//aHeights[1] = scr_d3d_average(h[1], h[4], -1, -1); //scr_d3d_average
			//aHeights[2] = scr_d3d_average(h[1], h[2], h[4], h[5]); //scr_d3d_average
			//aHeights[3] = scr_d3d_average(h[3], h[4], -1, -1); //scr_d3d_average
			//aHeights[4] = scr_d3d_average(h[4], -1, -1, -1); //scr_d3d_average
			//aHeights[5] = scr_d3d_average(h[4], h[5], -1, -1); //scr_d3d_average
			//aHeights[6] = scr_d3d_average(h[3], h[4], h[6], h[7]); //scr_d3d_average
			//aHeights[7] = scr_d3d_average(h[4], h[7], -1, -1); //scr_d3d_average
			//aHeights[8] = scr_d3d_average(h[4], h[5], h[7], h[8]); //scr_d3d_average
		
			aHeights[0] = mean(h[0], h[1], h[3], h[4]); //scr_d3d_average
			aHeights[1] = mean(h[1], h[4]); //scr_d3d_average
			aHeights[2] = mean(h[1], h[2], h[4], h[5]); //scr_d3d_average
			aHeights[3] = mean(h[3], h[4]); //scr_d3d_average
			aHeights[4] = mean(h[4]); //scr_d3d_average
			aHeights[5] = mean(h[4], h[5]); //scr_d3d_average
			aHeights[6] = mean(h[3], h[4], h[6], h[7]); //scr_d3d_average
			aHeights[7] = mean(h[4], h[7]); //scr_d3d_average
			aHeights[8] = mean(h[4], h[5], h[7], h[8]); //scr_d3d_average
			
			var _x = 0 * global._tw + xx * s2;
			var _y = 0 * global._th + yy * s2;
		
			var l_vList = ds_list_create();
	
			l_vList[| 0] = scr_d3d_vertex(_x, _y,aHeights[0] * s1);
			l_vList[| 1] = scr_d3d_vertex(_x + s1, _y,aHeights[1] * s1);
			l_vList[| 2] = scr_d3d_vertex(_x + s2, _y, aHeights[2] * s1);
			l_vList[| 3] = scr_d3d_vertex(_x, _y + s1, aHeights[3] * s1);
			l_vList[| 4] = scr_d3d_vertex(_x + s1, _y + s1,aHeights[4]*s1);
			l_vList[| 5] = scr_d3d_vertex(_x + s2, _y + s1, aHeights[5] * s1);
			l_vList[| 6] = scr_d3d_vertex(_x, _y + s2, aHeights[6] * s1);
			l_vList[| 7] = scr_d3d_vertex(_x + s1, _y + s2, aHeights[7] * s1);
			l_vList[| 8] = scr_d3d_vertex(_x + s2, _y + s2, aHeights[8] * s1);
		
			global.l_v[xx,yy] = l_vList;
		}
	}

	// Calculation of face normals from face orientation;
	debug("d3d calc vertex of map :: face normal");
	for (var yy=0;yy<hh;yy++) {
		//debug("d3d calc vertex of map :: face normal ("+string(yy)+"/"+string(hh)+")");
		for (var xx=0;xx<ww;xx++) {
			var l_nfList = ds_list_create();
		
			var l_vList = global.l_v[xx,yy];
		
			l_nfList[| 0] = scr_d3d_normalface(l_vList[| 0],l_vList[| 1],l_vList[| 4]);
			l_nfList[| 1] = scr_d3d_normalface(l_vList[| 1],l_vList[| 2],l_vList[| 4]);
			l_nfList[| 2] = scr_d3d_normalface(l_vList[| 2],l_vList[| 5],l_vList[| 4]);
			l_nfList[| 3] = scr_d3d_normalface(l_vList[| 5],l_vList[| 8],l_vList[| 4]);
			l_nfList[| 4] = scr_d3d_normalface(l_vList[| 8],l_vList[| 7],l_vList[| 4]);
			l_nfList[| 5] = scr_d3d_normalface(l_vList[| 7],l_vList[| 6],l_vList[| 4]);
			l_nfList[| 6] = scr_d3d_normalface(l_vList[| 6],l_vList[| 3],l_vList[| 4]);
			l_nfList[| 7] = scr_d3d_normalface(l_vList[| 3],l_vList[| 0],l_vList[| 4]);
		
			global.l_nf[xx,yy] = l_nfList;
		}
	}

	// Calculation of vertex normal from face fnormal
	debug("d3d calc vertex of map :: vertex normal");
	for (var yy=0;yy<hh;yy++) {
		//debug("d3d calc vertex of map :: vertex normal ("+string(yy)+"/"+string(hh)+")");
		for (var xx=0;xx<ww;xx++) {
			var l_nvList = ds_list_create();
		
			var xm1 = xx - 1; if (xm1 <= 0) { xm1 = 0; }
			var xp1 = xx + 1; if (xp1 >= ww) { xp1 = ww - 1; }
			var ym1 = yy - 1; if (ym1 <= 0) { ym1 = 0; }
			var yp1 = yy + 1; if (yp1 >= hh) { yp1 = hh - 1; }
		
			var l_nfList0 = global.l_nf[xm1, ym1];
			var l_nfList1 = global.l_nf[xx, ym1];
			var l_nfList2 = global.l_nf[xp1, ym1];
			var l_nfList3 = global.l_nf[xm1, yy];
			var l_nfList4 = global.l_nf[xx, yy];
			var l_nfList5 = global.l_nf[xp1, yy];
			var l_nfList6 = global.l_nf[xm1, yp1];
			var l_nfList7 = global.l_nf[xx, yp1];
			var l_nfList8 = global.l_nf[xp1, yp1];
		
			l_nvList[| 0] = scr_d3d_normalvertex(l_nfList0[| 3], l_nfList0[| 4], l_nfList1[| 5], l_nfList1[| 6], l_nfList3[| 1], l_nfList3[| 2], l_nfList4[| 0], l_nfList4[| 7]);	
			l_nvList[| 1] = scr_d3d_normalvertex(l_nfList1[| 5], l_nfList1[| 4], l_nfList4[| 0], l_nfList4[| 1],"","","","");	
			l_nvList[| 2] = scr_d3d_normalvertex(l_nfList1[| 3], l_nfList1[| 4], l_nfList2[| 5], l_nfList2[| 6], l_nfList4[| 1], l_nfList4[| 2], l_nfList5[| 0], l_nfList5[| 7]);
			l_nvList[| 3] = scr_d3d_normalvertex(l_nfList3[| 2], l_nfList3[| 3], l_nfList4[| 7], l_nfList4[| 6],"","","","");
			l_nvList[| 4] = scr_d3d_normalvertex(l_nfList4[| 3], l_nfList4[| 4], l_nfList4[| 5], l_nfList4[| 6], l_nfList4[| 1], l_nfList4[| 2], l_nfList4[| 0], l_nfList4[| 7]);
			l_nvList[| 5] = scr_d3d_normalvertex(l_nfList4[| 2], l_nfList4[| 3], l_nfList5[| 7], l_nfList5[| 6],"","","","");
			l_nvList[| 6] = scr_d3d_normalvertex(l_nfList3[| 3], l_nfList3[| 4], l_nfList4[| 5], l_nfList4[| 6], l_nfList6[| 1], l_nfList6[| 2], l_nfList7[| 0], l_nfList7[| 7]);
			l_nvList[| 7] = scr_d3d_normalvertex(l_nfList4[| 5], l_nfList4[| 4], l_nfList7[| 0], l_nfList7[| 1],"","","","");
			l_nvList[| 8] = scr_d3d_normalvertex(l_nfList4[| 3], l_nfList4[| 4], l_nfList5[| 5], l_nfList5[| 6], l_nfList7[| 1], l_nfList7[| 2], l_nfList8[| 0], l_nfList8[| 7]);
		
			global.l_nv[xx,yy] = l_nvList;
		}
	}

	scr_d3d_vertexformat();

	// Generate vertex buffers of chunks
	for (var cy=0;cy<(global.room_numtile_height/global.chunk_numtile_size);cy++) { // (4096 / 8) : (1024 / 8)
		for (var cx=0;cx<(global.room_numtile_width/global.chunk_numtile_size);cx++) { // 128 // 16
			var _chunk = "x" + string(cx) + "y" + string(cy);
			var _room_chunk = _room + "_" + _chunk;
		
			global.vertexmap[? _room_chunk] = vertex_create_buffer();
			vertex_begin(global.vertexmap[? _room_chunk], global.vformat);

			debug("d3d calc vertex of map :: create polygon");
			for (var yy=(cy*global.chunk_numtile_size);yy<(cy+1)*global.chunk_numtile_size;yy++) {
				//debug("d3d calc vertex of map :: create polygon ("+string(yy)+"/"+string(hh)+")");
				for (var xx=cx*global.chunk_numtile_size;xx<(cx+1)*global.chunk_numtile_size;xx++) {
					var l_vList = global.l_v[xx,yy];
					var l_nvList = global.l_nv[xx,yy];
					var l_uvList = global.l_uv[xx mod global.chunk_numtile_size,yy mod global.chunk_numtile_size];
		
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 0],l_vList[| 1],l_vList[| 4],l_nvList[| 0],l_nvList[| 1],l_nvList[| 4],l_uvList[| 0],l_uvList[| 1],l_uvList[| 4]);	
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 1],l_vList[| 2],l_vList[| 4],l_nvList[| 1],l_nvList[| 2],l_nvList[| 4],l_uvList[| 1],l_uvList[| 2],l_uvList[| 4]);	
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 2],l_vList[| 5],l_vList[| 4],l_nvList[| 2],l_nvList[| 5],l_nvList[| 4],l_uvList[| 2],l_uvList[| 5],l_uvList[| 4]);	
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 5],l_vList[| 8],l_vList[| 4],l_nvList[| 5],l_nvList[| 8],l_nvList[| 4],l_uvList[| 5],l_uvList[| 8],l_uvList[| 4]);	
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 8],l_vList[| 7],l_vList[| 4],l_nvList[| 8],l_nvList[| 7],l_nvList[| 4],l_uvList[| 8],l_uvList[| 7],l_uvList[| 4]);	
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 7],l_vList[| 6],l_vList[| 4],l_nvList[| 7],l_nvList[| 6],l_nvList[| 4],l_uvList[| 7],l_uvList[| 6],l_uvList[| 4]);
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 6],l_vList[| 3],l_vList[| 4],l_nvList[| 6],l_nvList[| 3],l_nvList[| 4],l_uvList[| 6],l_uvList[| 3],l_uvList[| 4]);
					scr_d3d_polygon(global.vertexmap[? _room_chunk], l_vList[| 3],l_vList[| 0],l_vList[| 4],l_nvList[| 3],l_nvList[| 0],l_nvList[| 4],l_uvList[| 3],l_uvList[| 0],l_uvList[| 4]);
				}
			}

			vertex_end(global.vertexmap[? _room_chunk]);		
		}
	}
	
	scr_d3d_calc_vertexmap_cleanup();
	
	scr_d3d_calc_vertexmap_save();
}
else {
	scr_d3d_calc_vertexmap_load();
}

debug("d3d calc vertex of map :: end");
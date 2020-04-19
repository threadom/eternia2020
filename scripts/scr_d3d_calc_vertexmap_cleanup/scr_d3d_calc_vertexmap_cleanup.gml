debug("d3d calc cleanup of map :: destroy list");

var ww = global.room_numtile_width;
var hh = global.room_numtile_height;

for (var yy=0;yy<hh;yy++) {
	for (var xx=0;xx<ww;xx++) {
		ds_list_destroy(global.l_v[xx,yy]);
		ds_list_destroy(global.l_nf[xx,yy]);
		ds_list_destroy(global.l_nv[xx,yy]);
	}
}

var ww = global.chunk_numtile_size;
var hh = global.chunk_numtile_size;

for (var yy=0;yy<hh;yy++) {
	for (var xx=0;xx<ww;xx++) {
		ds_list_destroy(global.l_uv[xx,yy]);
	}
}

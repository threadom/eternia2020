debug("d3d calc height of map :: begin");

var ww = global.room_numtile_width;
var hh = global.room_numtile_height;

global.heightlayer = layer_create(100);
global.heightmap = layer_tilemap_create(global.heightlayer,0,0,spr_height,ww,hh);

// run through the heightmap to setup the microheight tilemap
// note : if any tile is set to 0 then value is not change	
for (var yy=0;yy<hh;yy++) {
	for (var xx=0;xx<ww;xx++) {
		var texture_id = tilemap_get(global.hm_1,xx,yy);
		tilemap_set(global.heightmap,texture_id/2,xx,yy);
	}
}

//// run through level 1 texture tilemap to setup microheight tilemap
//// note : every tile need a value cause first tileset is not define to empty
//// run through level 2 texture tilemap to improve microheight tilemap
//// note : if any tile is set to 0 then value is not change
//// run through level 3 texture tilemap to improve microheight tilemap
//// note : if any tile is set to 0 then value is not change
for (var yy=0;yy<hh;yy++) {
	for (var xx=0;xx<ww;xx++) {
		var x2 = xx div 2;
		var y2 = yy div 2;
		var dX = xx mod 2;
		var dY = yy mod 2;
		// h1
		var h1 = tilemap_get(global.heightmap,xx,yy);
		
		for (var i=0;i<9;i++) {
			if (global.tm[i] > 0) {
				// h2
				var texture_id = tilemap_get(global.tm[i],x2,y2);
				if (texture_id > 0) {
					var ty = texture_id div global.heightmap_numtile_width;
					var tx = texture_id - (ty * global.heightmap_numtile_width);
					var h2 = scr_d3d_heightmap_json(global.ts[i],(tx*2)+dX,(ty*2)+dY);
					// h1 + h2
				}
			}
		}
		tilemap_set(global.heightmap,h1+h2,xx,yy);
	}
}

 //debug
//if (global.debug_enable) {
//	var s_hm = "";
//	for (var yy=0;yy<hh;yy++) {
//		var ligne = "";
//		for (var xx=0;xx<ww;xx++) {
//				if (xx>0) { ligne += ","; }
//				ligne += string(tilemap_get(global.heightmap,xx,yy));
//		}
//		show_debug_message(ligne);
//		s_hm += ligne;
//		if (yy<hh-1) { s_hm += ";"; }
//	}
//}

debug("d3d calc height of map :: end");
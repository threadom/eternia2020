layer_set_visible(layer_get_id("heightmap_1"), false);

global.hm_1 = layer_tilemap_get_id(layer_get_id("heightmap_1"));

layer_set_visible(layer_get_id("texturemap_1"), false);
layer_set_visible(layer_get_id("texturemap_2"), false);
layer_set_visible(layer_get_id("texturemap_3"), false);
layer_set_visible(layer_get_id("texturemap_4"), false);
layer_set_visible(layer_get_id("texturemap_5"), false);
layer_set_visible(layer_get_id("texturemap_6"), false);
layer_set_visible(layer_get_id("texturemap_7"), false);
layer_set_visible(layer_get_id("texturemap_8"), false);
layer_set_visible(layer_get_id("texturemap_9"), false);

global.tm[0] = layer_tilemap_get_id(layer_get_id("texturemap_1"));
global.tm[1] = layer_tilemap_get_id(layer_get_id("texturemap_2"));
global.tm[2] = layer_tilemap_get_id(layer_get_id("texturemap_3"));
global.tm[3] = layer_tilemap_get_id(layer_get_id("texturemap_4"));
global.tm[4] = layer_tilemap_get_id(layer_get_id("texturemap_5"));
global.tm[5] = layer_tilemap_get_id(layer_get_id("texturemap_6"));
global.tm[6] = layer_tilemap_get_id(layer_get_id("texturemap_7"));
global.tm[7] = layer_tilemap_get_id(layer_get_id("texturemap_8"));
global.tm[8] = layer_tilemap_get_id(layer_get_id("texturemap_9"));

global.ts[0] = tilemap_get_tileset(global.tm[0]);
global.ts[1] = tilemap_get_tileset(global.tm[1]);
global.ts[2] = tilemap_get_tileset(global.tm[2]);
global.ts[3] = tilemap_get_tileset(global.tm[3]);
global.ts[4] = tilemap_get_tileset(global.tm[4]);
global.ts[5] = tilemap_get_tileset(global.tm[5]);
global.ts[6] = tilemap_get_tileset(global.tm[6]);
global.ts[7] = tilemap_get_tileset(global.tm[7]);
global.ts[8] = tilemap_get_tileset(global.tm[8]);

layer_set_visible(layer_get_id("objects"), false);


global.heightmap_numtile_width = 16;
global.heightmap_numtile_height = 16;
global.heightmap_tile_size = 16;

global.texture_numtile_width = 16;
global.texture_numtile_height = 16;
global.texture_tile_size = 32;

global.chunk_numtile_size = 1024 / global.heightmap_tile_size;
global.room_numtile_width = tilemap_get_width(global.hm_1); // TileMap Tile Width
global.room_numtile_height = tilemap_get_height(global.hm_1); // TileMap Tile Height

global._tw = tilemap_get_tile_width(global.hm_1); // Tile Pixel Width
global._th = tilemap_get_tile_height(global.hm_1); // Tile Pixel Height

global.l_v = [];
global.l_nf = [];
global.l_nv = [];
global.l_uv = [];

global.vertexmap = ds_map_create();
global.heightmap = ds_map_create();
global.texturemap = ds_map_create();
global.objectsList = ds_list_create();

global.room_image = 0;
global.display3d = ds_map_create();
global.display3d[? "draw_fps"] = true;

//global.create_texturemap = false;
global.objects = ds_map_create();
global.map_3dTiles = ds_map_create();

global.map_loaded = ds_map_create();
global.tex_loaded = ds_map_create();
global.heightlayer = ds_map_create();

global.texturemap_index = 0;
global.room_v = ds_map_create();
global.room_nV = ds_map_create();
global.room_uV = ds_map_create();
global.heightmap_vbuff = ds_map_create();
global.async_map = ds_map_create();
global.buffer_map = ds_map_create();
global.async_room = ds_map_create();
global.cmp_buffer = ds_map_create();
global.gamepad = 0;

global.camera_rotation = 0;
global.camera_angle = 56.25;
global.camera_distance = 2000;
global.inital_distance = 2000;
//global.camera_angle = 33.75;
//global.camera_distance = 750;
//global.camera_angle = 11.25;
//global.camera_distance = 100;
global.camera_to_x = 0
global.camera_to_y = 0
global.camera_to_z = 0
global.viewset_mode = SET_LOCKED;


//global.skybox_texture = spr_skybox;
//global.skybox_index = 0;

global.chunk_size = 1024;
global.color_bytes = 4;
global.chunk_surface_bytes = sqr(global.chunk_size)*global.color_bytes;
global.chunk_range = 1;
global.tile_number_frames = 8;

global.tm = array_create(9, 0);
global.ts = array_create(9, 0);

//global._room = "room0";
global.old_refresh = current_time;
global.micro_image = 0;
global.room_image = 0;
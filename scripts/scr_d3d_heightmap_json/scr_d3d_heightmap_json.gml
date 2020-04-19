var _tileset = argument0;
var _x = argument1;
var _y = argument2;

if (!variable_global_exists("heightmap_json")) {
//	show_debug_message(working_directory + "\\" + tileset_get_name(_tileset) + ".json");
	var buff = buffer_load(working_directory + "\\" + tileset_get_name(_tileset) + ".json");
	global.heightmap_json = json_decode(buffer_read(buff, buffer_text));
	buffer_delete(buff);
}

var jmap = global.heightmap_json[? "height"];
var jlist = ds_list_create();
var size = ds_map_size(jmap);
for (var i = 1; i <= size; i++;) {
	ds_list_add(jlist, jmap[? string(i)]);
}

//show_debug_message("_y:"+string(_y)+"_x"+string(_x));
var jsonY = ds_list_find_value(jlist, _y);
var jsonX = ds_list_find_value(jsonY, _x);
//show_debug_message("_y:"+string(_y)+"_x:"+string(_x)+"jsonX:"+string(jsonX));

ds_list_destroy(jlist);

return jsonX;
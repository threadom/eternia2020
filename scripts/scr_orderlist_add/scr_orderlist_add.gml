var _object = argument0;

if (!variable_global_exists("orderlist")) {
	global.orderlist = ds_list_create();
}
ds_list_add(global.orderlist, _object);

scr_orderlist_sort();
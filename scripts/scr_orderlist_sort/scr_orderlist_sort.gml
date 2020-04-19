for (i=0;i<ds_list_size(global.orderlist);i++) {
	for (j=0;j<ds_list_size(global.orderlist);j++) {
		obj1 = global.orderlist[| i];
		obj2 = global.orderlist[| j];
		if (obj1.y > obj2.y) {
			global.orderlist[| i] = obj2;
			global.orderlist[| j] = obj1;
		}
		else if (obj1.y == obj2.y) {
			if (obj1.x > obj2.x) {
				global.orderlist[| i] = obj2;
				global.orderlist[| j] = obj1;
			}
		}
	}
}
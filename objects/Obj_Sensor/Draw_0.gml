if global.debug {
	draw_self()

	var list = ds_list_create()

	var num = instance_place_list(x, y, Obj_Enemy, list, false)
	for(var i = 0; i < ds_list_size(list); i++) {
		draw_circle_color(list[| i].x, list[| i].y, 33, c_red, c_red, false)
	}

	ds_list_destroy(list)
}
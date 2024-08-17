if instance_number(Obj_Camera) > 1 {instance_destroy()}
else {
	x = 0; y = 0
	
	view_width = 1080
	view_height = 960
	window_scale = 1

	window_set_size(view_width*window_scale, view_height*window_scale)
	alarm[0] = 0

	surface_resize(application_surface, view_width*window_scale, view_height*window_scale)
	
	screenShake = 0
	screenShakeReduce = 1.5
	reduce = true
}
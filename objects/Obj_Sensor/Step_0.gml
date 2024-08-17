if global.debug {
	x = room_width/2; y = room_height/2
	image_angle = point_direction(x, y, mouse_x, mouse_y)
	image_xscale = room_height*2
	image_yscale = 32 / sprite_get_height(Spr_Sensor)
}
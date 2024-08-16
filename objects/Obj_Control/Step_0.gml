if keyboard_check_pressed(vk_enter) {
	global.debug = !global.debug
	if false//instance_exists(Obj_Shooter)
		Obj_Shooter.y = (global.debug ? room_height/4 : room_height+30)

}
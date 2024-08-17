if keyboard_check_pressed(vk_enter) {
	global.debug = !global.debug
	if false//instance_exists(Obj_Shooter)
		Obj_Shooter.y = (global.debug ? room_height/4 : room_height+30)

}

if global.debug {
	if current_time % 10 == 0 {
		var print = string(irandom(9)) + " "
		print += string(position_meeting(mouse_x, mouse_y, Obj_Ball))
		show_debug_message(print)
	}
}
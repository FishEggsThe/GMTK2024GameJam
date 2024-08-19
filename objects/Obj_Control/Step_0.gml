// Debug here don't look
if keyboard_check_pressed(vk_enter) {
	global.debug = !global.debug
	//if instance_exists(Obj_EnemySpawner)
		//Obj_EnemySpawner.visible = !Obj_EnemySpawner.visible

}

if global.debug {
	if current_time % 10 == 0 {
		var print = string(irandom(9)) + " "
		print += string(position_meeting(mouse_x, mouse_y, Obj_Ball))
		show_debug_message(print)
	}
}
// Okay now you can look

if global.gameStart {
	if global.lostGame {
		if keyboard_check_pressed(ord("R")) {
			room_goto(room)
		}
	}
} else {
	var toggleCursorInput = ord("F")
	var toggleCursorSize = keyboard_check_pressed(toggleCursorInput)
	if toggleCursorSize {cursorSizeType = 1-cursorSizeType}
	
	if mouse_check_button_pressed(mb_left) {
		global.gameStart = true
		Obj_Shooter.alarm[0] = 1
	}
}
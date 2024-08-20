// Debug here don't look
//if keyboard_check_pressed(vk_enter) {
//	global.debug = !global.debug
	//if instance_exists(Obj_EnemySpawner)
		//Obj_EnemySpawner.visible = !Obj_EnemySpawner.visible

//}

if global.debug {
	if current_time % 10 == 0 {
		var print = string(irandom(9)) + " "
		print += string(position_meeting(mouse_x, mouse_y, Obj_Ball))
		show_debug_message(print)
	}
}
// Okay now you can look

if global.gameStart {
	if (global.lostGame && !Obj_ScoreSystem.setHighScoreName) {
		if keyboard_check_pressed(ord("R")) {
			audio_play_sound(Snd_ButtonPress, 0, false)
			room_goto(room)
		}
	}
} else {
	if keyboard_check_pressed(ord("F")) {
		cursorSizeType = 1-cursorSizeType
		audio_play_sound(Snd_ButtonPress, 0, false)
	}
	if keyboard_check_pressed(vk_space) {
		audio_play_sound(Snd_ButtonPress, 0, false)
		room_goto(Rm_Tutorial)
	}
	
	if keyboard_check_pressed(ord("E")) {
		audio_play_sound(Snd_ButtonPress, 0, false)
		global.gameStart = true
		Obj_Shooter.alarm[0] = 1
		layer_background_destroy(layer_background_get_id("Background_Grid"))
	}
}
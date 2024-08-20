if position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button_pressed(mb_left) {
		image_index++
		audio_play_sound(Snd_ButtonPress, 0, false)
	}
	if mouse_check_button_pressed(mb_right) {
		image_index--
		audio_play_sound(Snd_ButtonPress, 0, false)
	}
}

if !Obj_ScoreSystem.setHighScoreName
	instance_destroy()
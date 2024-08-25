if keyboard_check_pressed(vk_space) {
	audio_play_sound(Snd_ButtonPress, 0, false)
	ScreenTransition(function() {room_goto(Rm_Game)})
}
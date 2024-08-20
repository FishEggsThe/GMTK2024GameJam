if keyboard_check_pressed(vk_space) {
	room_goto(Rm_Game)
	audio_play_sound(Snd_ButtonPress, 0, false)
}
if keyboard_check(ord(input)) || (position_meeting(mouse_x, mouse_y, id) && mouse_check_button(mb_left)) {image_index = 1}
else {image_index = 0}

if keyboard_check_pressed(ord(input)) || (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	Obj_Tutorial.pageIndex+=nextPage
	audio_play_sound(Snd_ButtonPress, 0, false)
	with Obj_Tutorial {
		if pageIndex >= pageNumber
			pageIndex -= pageNumber
		if pageIndex < 0
			pageIndex += pageNumber
	}
}

//if position_meeting(mouse_x, mouse_y, id) {
//	if mouse_check_button_pressed(mb_left) {
//		Obj_Tutorial.pageIndex+=nextPage
//		audio_play_sound(Snd_ButtonPress, 0, false)
//		with Obj_Tutorial {
//			if pageIndex >= pageNumber
//				pageIndex -= pageNumber
//			if pageIndex < 0
//				pageIndex += pageNumber
//		}
//	}
//	if mouse_check_button(mb_left) {image_index = 0}
//	else {image_index = 1}
//} else {
//	image_index = 0
//}
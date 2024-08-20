if position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button_pressed(mb_left) {
		Obj_Tutorial.pageIndex+=nextPage
		Obj_Tutorial.pageIndex = clamp(Obj_Tutorial.pageIndex, 0, Obj_Tutorial.pageNumber-1)
	}
	if mouse_check_button(mb_left) {image_index = 0}
	else {image_index = 1}
} else {
	image_index = 0
}
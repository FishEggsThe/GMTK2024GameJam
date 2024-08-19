if position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button_pressed(mb_left) {image_index++}
	if mouse_check_button_pressed(mb_right) {image_index--}
}

if !Obj_ScoreSystem.setHighScoreName
	instance_destroy()
if vertical {
	x = room_width/2
	y = (room_height*3) * (alarm[0]/alarmSet) - room_height
} else {
	x = (room_width*2) * (1 - alarm[0]/alarmSet) - room_width/2
	y = room_height/2
}

if alarm[0] == round(alarmSet/2) {
	//show_debug_message("Holy shit")
	doDuringTransition()
}
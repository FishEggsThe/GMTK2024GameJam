for(var i = 0; i < blastDirectionsSize; i++) {
	switch(blastDirections[i]) {
		case "vert":
		if alarm == 44 show_debug_message("Vertical")
		draw_line_width_color(x, 0, x, room_height, blastSize, c_white, c_red)
		break
		
		case "hori":
		if alarm == 44 show_debug_message("Horizontal")
		draw_line_width_color(0, y, room_width, y, blastSize, c_white, c_red)
		break
		
		case "slash":
		if alarm == 44 show_debug_message("Slash")
		draw_line_width_color(x-room_width, y+room_height, x+room_width, y-room_height, blastSize, c_white, c_red)
		break
		
		case "bslash":
		if alarm == 44 show_debug_message("BackSlash")
		draw_line_width_color(x-room_width, y-room_height, x+room_width, y+room_height, blastSize, c_white, c_red)
		break
	}
}
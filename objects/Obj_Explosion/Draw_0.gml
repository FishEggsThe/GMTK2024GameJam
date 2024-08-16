var blastDirectionsSize = array_length(blastDirections)
for(var i = 0; i < blastDirectionsSize; i++) {
	switch(blastDirections[i]) {
		case "vert":
		draw_line_width_color(x, 0, x, room_height, 30, c_white, c_red)
		break
		
		case "hori":
		draw_line_width_color(0, y, 0, room_width, 30, c_white, c_red)
		break
		
		case "slash":
		draw_line_width_color(x-room_width, y-room_width, x+room_width, y+room_width, 30, c_white, c_red)
		break
		
		case "bslash":
		draw_line_width_color(x-room_width, y-room_width, x+room_width, y+room_width, 30, c_white, c_red)
		break
	}
}
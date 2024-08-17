var laserWidth = blastSize / sprite_get_height(Spr_Laser)
var life = 1//alarm[0]/alarmSet
for(var i = 0; i < blastDirectionsSize; i++) {
	var rotation = 15
	switch(blastDirections[i]) {
		case "vert":
		if alarm == 44 show_debug_message("Vertical")
		rotation = 90
		break
		
		case "hori":
		if alarm == 44 show_debug_message("Horizontal")
		rotation = 0
		break
		
		case "slash":
		if alarm == 44 show_debug_message("Slash")
		rotation = 45
		break
		
		case "bslash":
		if alarm == 44 show_debug_message("BackSlash")
		rotation = 135
		break
	}
	draw_sprite_ext(laserSprite, blastType, x, y, room_width*2, laserWidth, rotation, c_white, life)
}

if blastType == 0
	draw_sprite_ext(Spr_LaserCenter, 0, x, y, laserWidth, laserWidth, 0, c_white, life)
else if blastType == 3
	draw_sprite_ext(Spr_LaserCenter, 1, x, y, laserWidth, laserWidth, 45, c_white, life)

//for(var i = 0; i < ds_list_size(blacklistPos); i++) {
//	draw_circle_color(blacklistPos[| i][0], blacklistPos[| i][1], 33, c_red, c_red, false)
//}
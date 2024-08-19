if global.debug {draw_text_color(5, 5, "debug mode", c_lime, c_lime, c_green, c_green, 1)}

if global.gameStart {
	if (global.lostGame && !Obj_ScoreSystem.setHighScoreName) {
		var curve = animcurve_get_channel(AnCv_LoseDrop, "curve1")
		var percent = clamp(lostGamePercent, 0, 1)
		var yPos = room_height/2 - animcurve_channel_evaluate(curve, percent)*room_height/2
		DrawGregText("You lost...", room_width/2, yPos, 4, fa_center, fa_middle)
		if lostGamePercent < 2
			lostGamePercent+=1/60
		else
			DrawGregText("Press R to Restart", room_width/2, room_height/2+(global.fontHeight+3)*2, 2, fa_center)
	}
} else {
	DrawGregText("Buster Balls", room_width/2, room_height/4, 5, fa_center, fa_middle)
	//var text = "Click left mouse to Play\nPress 'F' to change cursor size"
	//DrawGregText(text, room_width/2, room_height/2, 2, fa_center, fa_middle)
	var yOffset = 80//(global.fontHeight+3)
	DrawGregText("Click left mouse to Play", room_width/2, room_height/2-yOffset, 2, fa_center, fa_middle)
	DrawGregText("Press 'Space' to see tutorial", room_width/2, room_height/2+(global.fontHeight+3)*2-yOffset, 2, fa_center, fa_middle)
	DrawGregText("Press 'F' to change cursor size", room_width/2, room_height/2+(global.fontHeight+3)*4-yOffset, 2, fa_center, fa_middle)
}
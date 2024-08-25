if global.debug {
	draw_text_color(5, 5, "debug mode", c_lime, c_lime, c_green, c_green, 1)
	DrawGregText(instance_number(Obj_Ball), room_width-275, 5, 3)
	DrawGregText(Obj_Shooter.overheat, room_width-275, 75, 3)
}

if global.gameStart {
	if (global.lostGame && !Obj_ScoreSystem.setHighScoreName) {
		var curve = animcurve_get_channel(AnCv_LoseDrop, "curve1")
		var percent = clamp(lostGamePercent, 0, 1)
		var yPos = room_height/2 - animcurve_channel_evaluate(curve, percent)*room_height/2
		DrawGregText("Game Over", room_width/2, yPos, 4, fa_center, fa_middle)
		if lostGamePercent < 2
			lostGamePercent+=1/60
		else
			DrawGregText("Press 'Space' to Restart", room_width/2, room_height/2+(global.fontHeight+3)*2, 2, fa_center)
	}
} else {
	draw_sprite_ext(Spr_Title, 0, room_width/2+5, room_height/4+5, 2, 2, 0, c_black, 1)
	draw_sprite_ext(Spr_Title, 0, room_width/2, room_height/4, 2, 2, 0, c_white, 1)
	//DrawGregText("Buster Balls", room_width/2, room_height/4, 5, fa_center, fa_middle)
	//var text = "Click left mouse to Play\nPress 'F' to change cursor size"
	//DrawGregText(text, room_width/2, room_height/2, 2, fa_center, fa_middle)
	var yOffset = 40//(global.fontHeight+3)
	DrawGregText("Press 'E' to Play", room_width/2, room_height/2-yOffset, 3, fa_center, fa_middle)
	DrawGregText("Press 'Space' to see tutorial", room_width/2, room_height/2+(global.fontHeight+3)*3-yOffset, 2, fa_center, fa_middle)
	DrawGregText("Press 'F' to change cursor size", room_width/2, room_height/2+(global.fontHeight+3)*6-yOffset, 2, fa_center, fa_middle)
}
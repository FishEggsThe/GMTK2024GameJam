if global.debug {draw_text_color(5, 5, "debug mode", c_lime, c_lime, c_green, c_green, 1)}

if global.lostGame {
	var curve = animcurve_get_channel(AnCv_LoseDrop, "curve1")
	var yPos = room_height/2 - animcurve_channel_evaluate(curve, lostGamePercent)*room_height/2
	DrawGregText("You lost...", room_width/2, yPos, 4, fa_center, fa_middle)
	if lostGamePercent < 1
	//	lostGamePercent = 1
	//else
		lostGamePercent+=1/60	
}
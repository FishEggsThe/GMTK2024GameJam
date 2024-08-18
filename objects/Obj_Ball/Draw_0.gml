if squashPercent < 1 {
	squashPercent += squashPercentInc
	for(var i = 0; i < 2; i++) {
		var calcCurve = animcurve_channel_evaluate(curve[i], squashPercent)
		calcCurve = lerp(calcCurve, 1, 1-squashAmount)
		squash[i] = calcCurve
	}
}

var xPos = x; var yPos = y
if shudder > 0 {
	xPos += random_range(-shudder, shudder)
	yPos += random_range(-shudder, shudder)
	shudder--
}

DrawBall(type, squash, tier, xPos, yPos, flash>0)
 
if squashPercent < 1 {
	squashPercent += squashPercentInc
	for(var i = 0; i < 2; i++)
		squash[i] = animcurve_channel_evaluate(curve[i], squashPercent)
}

var xPos = x; var yPos = y
if shudder > 0 {
	xPos += random_range(-shudder, shudder)
	yPos += random_range(-shudder, shudder)
	shudder--
}

DrawBall(type, squash, tier, xPos, yPos)
 
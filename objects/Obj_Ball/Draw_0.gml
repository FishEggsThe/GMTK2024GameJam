if squashPercent < 1 {
	squashPercent += squashPercentInc
	for(var i = 0; i < 2; i++)
		squash[i] = animcurve_channel_evaluate(curve[i], squashPercent)
}

DrawBall(type, squash)
 
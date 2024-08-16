type = 0
tier = 1
flying = true

moveAngle = 90
moveSpeed = 30
moveFriction = 1/3.5
xBounced = 1; yBounced = 1

squash = [1, 1]
squashPercent = 1
squashPercentInc = 1/15
squashCurve = BallSquashNStretch
curve = [animcurve_get_channel(squashCurve, "curve1"), 
		  animcurve_get_channel(squashCurve, "curve2")]

image_speed = 0
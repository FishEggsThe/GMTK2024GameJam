type = 0
tier = 1
flying = true
flash = 0
setFlash = 3

ballColor = [c_white]
explosionDirections = []
merger = false

moveAngle = 90
moveSpeed = 30
maxMoveSpeed = 30
moveFriction = 1/3.25
timesBounced = 0
xBounced = 1; yBounced = 1

shudder = 0
squash = [1, 1]
squashPercent = 1
squashPercentInc = 1/15
squashAmount = 1
squashCurve = AnCv_BallSquashNStretch
curve = [animcurve_get_channel(squashCurve, "curve1"), 
		  animcurve_get_channel(squashCurve, "curve2")]

image_speed = 0
//mask_index = global.ballSprites[0]
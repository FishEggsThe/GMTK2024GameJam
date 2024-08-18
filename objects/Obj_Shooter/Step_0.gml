var shootPressedInput = mouse_check_button_pressed(mb_left)
var shootReleaseInput = mouse_check_button_released(mb_left)
var swapBallInput = keyboard_check_pressed(vk_space)

var mousePoint = point_direction(x, y, mouse_x, mouse_y)
if (mousePoint > 0 || mousePoint <= 180)
	shootAngle = mousePoint

if swapBallInput {
	if reserveBall > -1 {
		var temp = ballQueue[0]
		ballQueue[0] = reserveBall
		reserveBall = temp
	} else {
		reserveBall = ballQueue[0]
		CycleQueue()
	}
}

if !global.lostGame {
	if (canShoot && shootPressedInput) {canPower = true; SetCursor(1)}

	if canPower {
		if reversePower
			shotPower -= shotPowerMax/60
		else 
			shotPower += shotPowerMax/60
	
	}
	if shotPower >= shotPowerMax or shotPower < 0
		reversePower = !reversePower

	if (shootReleaseInput && canPower) {
		var trueShotPower = clamp(shotPower, shotPowerMin, shotPowerTrueMax)
		ShootBall(trueShotPower, ballQueue[0], shootAngle)
		shotPower = 0
		canPower = false
		canShoot = false
		alarm[0] = shotDelay
		SetCursor(0)
	}
}


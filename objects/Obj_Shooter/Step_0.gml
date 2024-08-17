var shootPressedInput = mouse_check_button_pressed(mb_left)
var shootReleaseInput = mouse_check_button_released(mb_left)

var mousePoint = point_direction(x, y, mouse_x, mouse_y)
if (mousePoint > 0 || mousePoint <= 180)
	shootAngle = mousePoint

if (canShoot && shootPressedInput) {canPower = true; SetCursor(1)}

if canPower {shotPower += shotPowerMax/60}

if ((shootReleaseInput && canPower) || shotPower >= shotPowerMax) {
	var trueShotPower = clamp(shotPower, shotPowerMin, shotPowerMax)
	ShootBall(trueShotPower, ballQueue[0], shootAngle)
	shotPower = 0
	canPower = false
	canShoot = false
	alarm[0] = shotDelay
	SetCursor(0)
}


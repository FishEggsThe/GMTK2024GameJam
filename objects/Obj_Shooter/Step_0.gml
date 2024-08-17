//var horiInput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var shootPressedInput = mouse_check_button_pressed(mb_left)
var shootReleaseInput = mouse_check_button_released(mb_left)
//shootAngle -= horiInput*turnSpeed

var mousePoint = point_direction(x, y, mouse_x, mouse_y)
if (mousePoint > 0 || mousePoint <= 180)
	shootAngle = mousePoint

if (canShoot && shootPressedInput) {canPower = true}

if canPower {shotPower += shotPowerMax/60}

if ((shootReleaseInput && canPower) || shotPower >= shotPowerMax) {
	var trueShotPower = clamp(shotPower, shotPowerMin, shotPowerMax)
	ShootBall(trueShotPower, ballQueue[0], shootAngle)
	shotPower = 0
	canPower = false
	canShoot = false
	alarm[0] = shotDelay
}


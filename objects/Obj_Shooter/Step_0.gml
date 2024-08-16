//var horiInput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var shootInput = mouse_check_button_pressed(mb_left)
//shootAngle -= horiInput*turnSpeed

shootAngle = point_direction(x, y, mouse_x, mouse_y)
shootAngle = clamp(shootAngle, 0, 180)


if shootInput {
	 ShootBall(ballQueue[0], shootAngle)
}
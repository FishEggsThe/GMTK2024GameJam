var xPos = x - cos(degtorad(shootAngle))*alarm[0]
var yPos = y + sin(degtorad(shootAngle))*alarm[0]
draw_sprite_ext(Spr_PlayerArm, 0, xPos, yPos, 1, 1, shootAngle, c_white, 1)
draw_sprite(Spr_Shooter, image_index, x, y)

if shotPower > 0 {
	var length = 50
	var xPower = x+(2*shotPower*length/shotPowerMax)*cos(degtorad(shootAngle))
	var yPower = y-(2*shotPower*length/shotPowerMax)*sin(degtorad(shootAngle))
	draw_set_color(c_green)
	draw_arrow(x, y, xPower, yPower, 30)
}

var powerPercent = shotPower/shotPowerMax
var lineDist = point_distance(x, y, mouse_x, mouse_y)*powerPercent
var dots = 8; var dotLineDist = lineDist/dots
var xDotPos = cos(degtorad(shootAngle))
var yDotPos = -sin(degtorad(shootAngle))

draw_set_color(c_white)
for(var i = 0; i <= dots; i++) {
	var xBall = x+2*xDotPos+xDotPos*dotLineDist*i
	var yBall = y+2*yDotPos+yDotPos*dotLineDist*i
	if (point_distance(xBall, yBall, x, y) > 85 &&
		point_distance(xBall, yBall, mouse_x, mouse_y) > 32)
		draw_circle(xBall, yBall, 2, false)
}
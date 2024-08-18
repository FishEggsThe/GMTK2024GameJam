// Arm
var armExtend = clamp(sqrt(power((mouse_x-x),2)+power((mouse_y-y),2))/150,0.5,1.5)
draw_sprite_ext(Spr_PlayerArm, 0, x, y, armExtend, 1, shootAngle, c_white, 1)

// The Main Character
draw_sprite(Spr_Shooter, image_index, x, y)

if shotPower > 0 {
	// Dotted Line
	var xVector = cos(degtorad(shootAngle))
	var yVector = -sin(degtorad(shootAngle))
	var powerPercent = shotPower/shotPowerMax
	var armDist = sprite_get_width(Spr_PlayerArm)*armExtend
	var xPos = xVector*armDist
	var yPos = yVector*armDist
	
	var lineDist = point_distance(x, y, mouse_x, mouse_y)*powerPercent
	var dots = 8; var dotLineDist = lineDist/dots
	var xDotPos = xVector*dotLineDist
	var yDotPos = yVector*dotLineDist
	
	for(var i = 0; i <= dots; i++) {
		var xBall = x+xPos+xDotPos*i
		var yBall = y+yPos+yDotPos*i
		if (point_distance(xBall, yBall, x, y) > armDist &&
			point_distance(xBall, yBall, mouse_x, mouse_y) > 32)
			draw_circle(xBall, yBall, 2, false)
	}
}
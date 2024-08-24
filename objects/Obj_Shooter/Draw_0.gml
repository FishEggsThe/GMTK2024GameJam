var xVector = cos(degtorad(shootAngle))
var yVector = -sin(degtorad(shootAngle))

// Arm
var armExtend = 1
if (global.gameStart && !global.allowRestart) {
	var xRecoil = xVector*recoil
	var yRecoil = yVector*recoil
	var xPos = x - xRecoil; var yPos = y - yRecoil
	if shotPower > 0 {
		var shudder = shotPower/6
		xPos += random_range(-shudder, shudder)
		yPos += random_range(-shudder, shudder)
	}
	armExtend = clamp(sqrt(power((mouse_x-x),2)+power((mouse_y-y),2))/150,0.5,1.5)
	draw_sprite_ext(armSprite, 0, xPos+5, yPos+5, armExtend, 1, shootAngle, c_black, 1)
	draw_sprite_ext(armSprite, 0, xPos, yPos, armExtend, 1, shootAngle, c_white, 1)
	
	if recoil > 0 {recoil--}
}

// The Main Character
if global.allowRestart {
	if image_index >= image_number-1  {
		image_index = image_number-1
		image_speed = 0
	}
}
draw_sprite_ext(bodySprite, image_index, x+5, y+5, 1, 1, 0, c_black, 1)
draw_sprite(bodySprite, image_index, x, y)

// Dotted Line
if shotPower > 0 {
	var powerPercent = shotPower/shotPowerMax
	
	var armDist = sprite_get_width(armSprite)*armExtend
	var xArmDist = xVector*armDist
	var yArmDist = yVector*armDist
	
	var lineDist = point_distance(x+xArmDist, y+yArmDist, mouse_x, mouse_y)*powerPercent
	var dots = 8; var dotLineDist = lineDist/dots
	var xDotPos = xVector*dotLineDist
	var yDotPos = yVector*dotLineDist
	
	draw_set_color(c_white)
	for(var i = 0; i <= dots; i++) {
		var xBall = x+xArmDist+xDotPos*i
		var yBall = y+yArmDist+yDotPos*i
		if (point_distance(xBall, yBall, x, y) > armDist &&
			point_distance(xBall, yBall, mouse_x, mouse_y) > 32)
			draw_circle(xBall, yBall, 2, false)
	}
}
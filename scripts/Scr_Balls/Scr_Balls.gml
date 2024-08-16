function DrawBall(_type, xPos = x, yPos = y) {
	draw_sprite_ext(global.ballSprites[_type], 0, xPos, yPos, 1, 1, _type*90, c_white, 1)
}

function MoveBall() {
	var xSpeed =  moveSpeed*cos(degtorad(moveAngle))
	var ySpeed = -moveSpeed*sin(degtorad(moveAngle))
	
	if place_meeting(x+xSpeed, y, Obj_Border) {
		xSpeed *= -1
		moveAngle = 180 - moveAngle
	}
	
	x += xSpeed
	y += ySpeed
	moveSpeed -= moveFriction
}
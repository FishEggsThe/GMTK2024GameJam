if moveSpeed > 0 {
	var xSpeed =  moveSpeed*cos(degtorad(moveAngle))
	var ySpeed = -moveSpeed*sin(degtorad(moveAngle))
	
	x += xSpeed
	y += ySpeed
	
	moveSpeed -= moveFriction
}
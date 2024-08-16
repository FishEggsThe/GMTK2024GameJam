function DrawBall(_type, _tier = tier,  _xPos = x, _yPos = y) {
	draw_sprite_ext(global.ballSprites[_type], 0, _xPos, _yPos, _tier, _tier, _type*90, c_white, 1)
}

function ResetBounced() {
	// This is such a stupid fucking solution
	xBounced = 1; yBounced = 1
}

function MoveBall() {
	var xSpeed =  moveSpeed*cos(degtorad(moveAngle))*xBounced
	var ySpeed = -moveSpeed*sin(degtorad(moveAngle))*yBounced
	
	if place_meeting(x+xSpeed, y, Obj_Border) {
		xSpeed *= -1
		xBounced *= -1
		//moveAngle = 180 - moveAngle
	}
	if (y+ySpeed < 0 || y+ySpeed > room_height) {
		ySpeed *= -1
		yBounced *= -1
		//moveAngle = moveAngle - 180
	}
	
	x += xSpeed
	y += ySpeed
	moveSpeed -= moveFriction
	
	var ballTouched = instance_place(x, y, Obj_Ball)
	if ballTouched != noone {
		if type == ballTouched.type {
			MergeBalls(id, ballTouched)
		}
		else {
			var ToucherAngle = point_direction(ballTouched.x, ballTouched.y, x, y)
			var ToucheeAngle = ToucherAngle-180
			var weightRatio = tier / ballTouched.tier
			
			ballTouched.moveSpeed = moveSpeed*weightRatio
			moveSpeed /= weightRatio
			moveAngle = ToucherAngle
			ballTouched.moveAngle = ToucheeAngle
			ResetBounced()
			with ballTouched {ResetBounced()}
		}
	}
}

function MergeBalls(_ball, _targetBall) {
	_targetBall.tier += _ball.tier
	instance_destroy(_ball)
	if _targetBall.tier > 3
		ExplodeBall(_ball)
	
}

function ExplodeBall(_ball) {
	
}
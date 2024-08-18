function DrawBall(_type, _size = [1, 1], _tier = tier,  _xPos = x, _yPos = y, _flash = false) {
	gpu_set_fog(_flash, c_white, 0, 1000)
	
	// Regular Ball
	if _type < 6
		draw_sprite_ext(global.ballSprites[_tier-1], _type, _xPos, _yPos, _size[0], _size[1], 0, c_white, 1)
	// Super Ball
	else {
		var drawSuperBall = Spr_SuperBall
		if object_index == Obj_Shooter
			drawSuperBall = Spr_SmallSuperBall
			
		draw_sprite_ext(drawSuperBall, 0, _xPos, _yPos, _size[0], _size[1], 0, c_white, 1)
	}
		
	gpu_set_fog(false, c_white, 0, 1000)
	
	if global.debug
		DrawGregText(_type, _xPos, _yPos)
}

function SetBallSquash(_amount = 1,_ball = id) {
	_ball.squashPercent = 0
	_ball.squashAmount = _amount
}

function ResetBounced() {
	// This is such a stupid fucking solution
	xBounced = 1; yBounced = 1
}

function MoveBall() {
	moveSpeed = clamp(moveSpeed, 0, maxMoveSpeed)
	
	var xSpeed =  moveSpeed*cos(degtorad(moveAngle))*xBounced
	var ySpeed = -moveSpeed*sin(degtorad(moveAngle))*yBounced
	
	// Collisions with walls
	if place_meeting(x+xSpeed, y, Obj_Border) {
		xSpeed *= -1
		xBounced *= -1
		SetBallSquash(moveSpeed/maxMoveSpeed)
	}
	if (y+ySpeed < 0 || y+ySpeed > room_height) {
		ySpeed *= -1
		yBounced *= -1
		SetBallSquash(moveSpeed/maxMoveSpeed)
	}
	
	var ballTouched = instance_place(x+xSpeed, y+ySpeed, Obj_Ball)
	if ballTouched != noone {
		if type == ballTouched.type {
			MergeBalls(id, ballTouched)
		}
		else {
			//timesBounced++
			var ToucherAngle = point_direction(ballTouched.x, ballTouched.y, x, y)
			var ToucheeAngle = ToucherAngle-180
			var weightRatio = (tier / ballTouched.tier)// / timesBounced
			
			ballTouched.moveSpeed = moveSpeed//*weightRatio
			//if 1-weightRatio == 0 {weightRatio--}
			//moveSpeed *= 1-weightRatio
			moveAngle = ToucherAngle
			ballTouched.moveAngle = ToucheeAngle
			ResetBounced(); SetBallSquash(moveSpeed/maxMoveSpeed)
			with ballTouched {ResetBounced(); SetBallSquash(moveSpeed/maxMoveSpeed)}
		}
	}
	
	x += xSpeed
	y += ySpeed
	moveSpeed -= moveFriction
}

function MergeBalls(_ball, _targetBall) {
	_targetBall.tier += _ball.tier
	_targetBall.moveAngle = _ball.moveAngle
	_targetBall.moveSpeed = _ball.moveSpeed/4
	instance_destroy(_ball)
	
	if _targetBall.tier > global.numOfBallTiers {
		_targetBall.tier = 3
		ExplodeBall(_targetBall)
	} else {
		_targetBall.maxMoveSpeed -= 10//maxMoveSpeed/3
		_targetBall.mask_index = global.ballSprites[tier-1]
		_targetBall.flash = setFlash
		SetBallSquash(1, _targetBall)
	}
	
}

function ExplodeBall(_explodeBall = id) {
	CauseExplosion(_explodeBall.type, _explodeBall.tier)
	instance_destroy(_explodeBall)
}
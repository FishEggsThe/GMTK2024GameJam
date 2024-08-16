function ShootBall(_speed, _type, _angle) {
	with instance_create_layer(x, y, "Instances", Obj_Ball) {
		type = _type
		moveAngle = _angle
		trueSpeed = power(_speed, 1.1)
		//var xPos = x + cos(degtorad(moveAngle))*_speed
		//var yPos = y + sin(degtorad(moveAngle))*_speed
		//var dist = point_distance(x, y, xPos, yPos)
		//moveSpeed = sqrt(2*moveFriction*dist)
		moveSpeed = _speed
	}
	CycleQueue()
}

function CycleQueue() {
	for(var i = 0; i < ballQueueSize-1; i++)
		ballQueue[i] = ballQueue[i+1]
	ballQueue[ballQueueSize-1] = irandom(global.numOfBallTypes-1)
}
function ShootBall(_type, _angle) {
	with instance_create_layer(x, y, "Instances", Obj_Ball) {
		type = _type
		moveAngle = _angle
		var dist = point_distance(x, y, mouse_x, mouse_y)
		moveSpeed = sqrt(2*moveFriction*dist)
	}
	CycleQueue()
}

function CycleQueue() {
	for(var i = 0; i < ballQueueSize-1; i++)
		ballQueue[i] = ballQueue[i+1]
	ballQueue[ballQueueSize-1] = irandom(global.numOfBallTypes-1)
}
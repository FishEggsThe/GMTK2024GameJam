function ShootBall(angle){
	with instance_create_layer(x, y, "Instances", Obj_Ball) {
		moveAngle = angle
		var dist = point_distance(x, y, mouse_x, mouse_y)
		moveSpeed = sqrt(2*moveFriction*dist)
		
	}
}
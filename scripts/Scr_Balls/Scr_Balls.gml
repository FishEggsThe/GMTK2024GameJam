function ShootBall(angle){
	with instance_create_layer(x, y, "Instances", Obj_Ball) {
		moveAngle = angle
	}
}
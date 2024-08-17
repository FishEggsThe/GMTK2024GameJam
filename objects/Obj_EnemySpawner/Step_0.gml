spawnRate--
if spawnRate < 0 {
	var offset = 37
	with instance_create_layer(random_range(270+offset, 810-offset), -offset, "Instances", Obj_Enemy) {
		moveSpeed = Obj_EnemySpawner.setSpeed
	}
	spawnRate = spawnRateSet
}
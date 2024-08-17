spawnRate--
if spawnRate < 0 {
	var spawnBurst = irandom_range(1, maxToSpawn)
	numToSpawn-= spawnBurst
	
	var offset = 37
		with instance_create_layer(random_range(270+offset, 810-offset), -offset, "Instances", Obj_Enemy) {
			moveSpeed = Obj_EnemySpawner.setSpeed
		}
	spawnRate = spawnRateSet
}
if !global.lostGame
	spawnRate--
	if spawnRate < 0 {
		if maxToSpawn > numToSpawn
			maxToSpawn = numToSpawn
		
		var spawnBurst = irandom(maxToSpawn)
		if spawnBurst <= 0 {spawnBurst = 1}
		numToSpawn-= spawnBurst
	
		var offset = 37
		repeat (spawnBurst) {
			with instance_create_layer(random_range(270+offset, 810-offset), -offset, "Instances", Obj_Enemy) {
				moveSpeed = Obj_EnemySpawner.setSpeed
			}
		}
		spawnRate = spawnRateSet
	}

	if numToSpawn <= 0 {
		if spawnRateSet > 20
			spawnRateSet -= 20
		
		if setNumToSpawn < 72
			setNumToSpawn += 6
		
		if setSetSpeed < 1.5
			setSetSpeed += 0.25
	
		if spawnRateSet % 60 == 0
			maxToSpawn += 3
	
		numToSpawn = setNumToSpawn
		difficulty++
	}
}
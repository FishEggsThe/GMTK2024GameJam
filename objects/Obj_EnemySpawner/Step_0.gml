if !global.lostGame {
	// Regular spawning
	spawnRate--
	if spawnRate < 0 {
		if maxToSpawn > numToSpawn
			maxToSpawn = numToSpawn
		
		var spawnBurst = irandom(maxToSpawn)
		if spawnBurst <= 0 {spawnBurst = 1}
		numToSpawn-= spawnBurst
		var enemyToSpawn = enemyPools[enemyPoolsIndex][irandom(enemyPoolSize-1)]
	
		var offset = 38
		repeat (spawnBurst) {
			with instance_create_layer(random_range(270+offset, 810-offset), -offset, "Instances", enemyToSpawn) {
				moveSpeed = Obj_EnemySpawner.setSpeed
				hp = Obj_EnemySpawner.setHp
			}
		}
		spawnRate = spawnRateSet
	}

	// Difficulty increase
	if numToSpawn <= 0 {
		difficulty++
		// Spawn rate
		if spawnRateSet > 20
			spawnRateSet -= 20
		
		// Wave size
		if setNumToSpawn < 72
			setNumToSpawn += 3
		
		// Enemy speed
		if (difficulty%3 = 0 && setSetSpeed < 1.5)
			setSetSpeed += 0.25
		
		// Enemy health
		if (setHp < 9 && difficulty%3 == 1)
			setHp++
			
		// Enemy Pool
		if (difficulty%3 == 1 && enemyPoolsIndex < enemyPoolsSize) {
			enemyPoolsIndex++
			enemyPoolSize = array_length(enemyPools[enemyPoolsIndex])
		}
	
		// Max spawns at a time
		if spawnRateSet % 60 == 0
			setMaxToSpawn++
	
		numToSpawn = setNumToSpawn
		maxToSpawn = setMaxToSpawn
	}
}
if !global.lostGame {
	// Regular spawning
	spawnRate--
	if spawnRate < 0 {
		if maxToSpawn > numToSpawn
			maxToSpawn = numToSpawn
		
		var spawnBurst = irandom(maxToSpawn)
		if spawnBurst <= 0 {spawnBurst = 1}
		numToSpawn-= spawnBurst
		var enemyToSpawn = enemyPools[poolIndex][irandom(poolSize-1)]
	
		var offset = 38
		repeat (spawnBurst) {
			var enemySpawned = instance_create_layer(random_range(270+offset, 810-offset), -offset, "Instances", enemyToSpawn)
			with enemySpawned {
				moveSpeed = Obj_EnemySpawner.setSpeed
				hp = Obj_EnemySpawner.setHp
			}
			
			// Ian Code (reworked to fit here)
			// sets spawn point for eyes
			// increase both values by 270
			var xChoice = enemySpawned.x
			// the second value should increase with difficulty
			var yChoice = enemySpawned.y

			// creates the eye visual
			with instance_create_layer(xChoice,yChoice+offset*4,"Particles",obj_enemyEyes) {
				eyeType = enemySpawned.eyeSprite
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
		if (difficulty%3 == 0 && poolIndex < enemyPoolsSize-1) {
			poolIndex++
			poolSize = array_length(enemyPools[poolIndex])
		}
	
		// Max spawns at a time
		if spawnRateSet % 60 == 0
			setMaxToSpawn++
	
		numToSpawn = setNumToSpawn
		maxToSpawn = setMaxToSpawn
	}
}


// Ian Code
// moves this object left and right and up and down
x = sin(hMovement)*64+256;
y = sin(vMovement)*1 + y// + difficulty;
hMovement += 0.015;
vMovement += 0.09;
if !global.gameStart {exit}

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
				var isBig = (object_index == Obj_EnemyBig)
				moveSpeed = Obj_EnemySpawner.setSpeed
				hp = Obj_EnemySpawner.setHp
				if isBig {
					moveSpeed /= 2
					hp = round(hp * (2+1/3))
				}
				
			}
			
			// Ian Code (reworked to fit here)
			// sets spawn point for eyes
			// increase both values by 270
			var xChoice = enemySpawned.x
			// the second value should increase with difficulty
			var yChoice = 30+random(40)
			//var yChoice = enemySpawned.y+offset*4

			// creates the eye visual
			with instance_create_layer(xChoice,yChoice,"Particles",obj_enemyEyes) {
				eyeType = enemySpawned.eyeSprite
			}
			// Ian Code end
		}
		spawnRate = spawnRateSet
	}

	// Difficulty increase
	// The if statements check if the stat can go lower/higher than the threshold
	// Then, if it has it, it checks how many rounds have passed
	if numToSpawn <= 0 {
		difficulty++
		// Spawn rate
		if (spawnRateSet > 20 && difficulty%3 == 0)
			spawnRateSet -= 10
			
		// Max spawns at a time
		if (spawnRateSet%60 == 0 && difficulty%3 == 0)
			setMaxToSpawn++
		
		// Wave size
		if (setNumToSpawn < 72 && difficulty%3 == 0)
			setNumToSpawn += 3
		
		// Enemy speed
		if (setSetSpeed < 1.5 && difficulty%3 == 0)
			setSetSpeed += 0.25
		
		// Enemy health
		if (setHp < 10 && difficulty%3 == 0)
			setHp++
			
		// Enemy Pool
		if (poolIndex < enemyPoolsSize-1 && difficulty%3 == 0) {
			poolIndex++
			poolSize = array_length(enemyPools[poolIndex])
		}
	
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
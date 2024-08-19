enemyPools = [[Obj_Enemy],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySide_1],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySide_1, Obj_EnemySide_1]]
enemyPoolsSize = array_length(enemyPools)
poolIndex = 0
poolSize = array_length(enemyPools[poolIndex])

// Spawn rate
spawnRateSet = 180
spawnRate = spawnRateSet

// Wave size
setNumToSpawn = 12
numToSpawn = setNumToSpawn

// Max spawns at a time
setMaxToSpawn = 2
maxToSpawn = setMaxToSpawn

// Enemy speed
setSetSpeed = 0.75
setSpeed = setSetSpeed

// Enemy health
setHp = 3
hp = setHp

difficulty = 1
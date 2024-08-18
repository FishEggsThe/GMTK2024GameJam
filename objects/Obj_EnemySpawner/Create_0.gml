enemyPools = [[Obj_Enemy],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySneaky],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySneaky, Obj_EnemySneaky]]
enemyPoolsIndex = 0
enemyPoolsSize = array_length(enemyPools)
enemyPoolSize = array_length(enemyPools[enemyPoolsIndex])

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
enemyPools = [[Obj_Enemy],//[Obj_Enemy],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySneaky],
			  [Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySide, Obj_EnemySneaky, Obj_EnemyBig],
			  [Obj_Enemy, Obj_Enemy, Obj_Enemy, Obj_EnemySide, Obj_EnemySide, Obj_EnemySneaky, Obj_EnemySneaky, Obj_EnemyBig]]
enemyPoolsSize = array_length(enemyPools)
poolIndex = 0
poolSize = array_length(enemyPools[poolIndex])

difficulty = 1

// Spawn rate
spawnRateSet = 210
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


// Ian Code
// note to self=== hMovement:vMovement should be equivalent to a 2:11 ratio
hMovement = 0;
vMovement = 0;
//xChoice = 0
//yChoice = 0

//alarm_set(0,20)
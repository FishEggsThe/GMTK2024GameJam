if global.debug {
	var roundStats = string(difficulty) + ".\n"
	roundStats = "Spawn Rate: " + string(spawnRateSet/60) + "s.\n"
	roundStats += "Wave Size: " + string(setNumToSpawn) + "\n"
	roundStats += "Wave Size: " + string(setNumToSpawn) + "\n"
	roundStats += "Enemy Speed: " + string(setSetSpeed)
	DrawGregText(roundStats, 5, 100)
}
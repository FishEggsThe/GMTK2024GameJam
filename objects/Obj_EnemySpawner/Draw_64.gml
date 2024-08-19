if global.debug {
	var roundStats = string(difficulty) + ".\n"
	roundStats += "Spawn Rate: " + string(spawnRateSet/60) + "s.\n"
	roundStats += "Max Spawn Amount: " + string(maxToSpawn) + "\n"
	roundStats += "Wave Size: " + string(setNumToSpawn) + "\n"
	roundStats += "Enemy Speed: " + string(setSetSpeed) + "\n"
	roundStats += "Enemy Health: " + string(setHp) + "\n\n"
	
	roundStats += "Spawn Timer: " + string(spawnRate/60) + "s.\n"
	roundStats += "Current Wave: " + string(numToSpawn)
	DrawGregText(roundStats, 5, 100)
}

if global.gameStart {
	// The object had visible set to false, fuck me
	DrawGregText("Round:", room_width-5, 5, 3, fa_right)
	DrawGregText(difficulty, room_width-5, 5+3*(global.fontHeight+3), 3, fa_right)
	//DrawGregText("Round: " + string(difficulty), room_width-5, 5, 3, fa_right, fa_top)
}
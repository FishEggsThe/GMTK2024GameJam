if pointsUntilLife <= 0 {
	Obj_Shooter.playerLives++
	setPointsUntilLife *= 2
	pointsUntilLife += setPointsUntilLife
}

if setHighScoreName {
	if keyboard_check_pressed(ord("F")) {
		var name = ""
		with Obj_NameButton {
			name = string_copy(global.fontContains, image_index+1, 1) + name
		}
		
		setHighScoreName = false
		
		SetHighScore(name, totalScore, placementIndex)
	}
}
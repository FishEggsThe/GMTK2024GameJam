if pointsUntilLife <= 0 {
	Obj_Shooter.playerLives++
	setPointsUntilLife *= 2
	pointsUntilLife += setPointsUntilLife
}

if setHighScoreName {
	if keyboard_check_pressed(ord("F")) {
		audio_play_sound(Snd_ButtonPress, 0, false)
		var name = ""
		with Obj_NameButton {
			name = string_copy(global.fontContains, image_index+1, 1) + name
		}
		
		setHighScoreName = false
		
		SetHighScore(name, totalScore, placementIndex)
	}
}
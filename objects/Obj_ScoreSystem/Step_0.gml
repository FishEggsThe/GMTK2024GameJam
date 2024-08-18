if pointsUntilLife <= 0 {
	Obj_Shooter.playerLives++
	pointsUntilLife += setPointsUntilLife
	setPointsUntilLife*=2
}
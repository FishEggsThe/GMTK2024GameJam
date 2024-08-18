function TakeLife(){
	Obj_Shooter.playerLives--
	if Obj_Shooter.playerLives <= 0
		LoseGame()
	FlyAway()
	instance_destroy()
}

function FlyAway() {
	
}

function LoseGame() {
	global.lostGame = true
}
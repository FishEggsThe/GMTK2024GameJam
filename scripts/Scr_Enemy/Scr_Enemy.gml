function TakeLife(){
	Obj_Shooter.playerLives--
	if Obj_Shooter.playerLives <= 0
		LoseGame()
	StartFlyAway()
}

function StartFlyAway() {
	moveSpeed *= -1
	moveSpeedInc = -0.3
	deleteOffScreen = true
}

function LoseGame() {
	global.lostGame = true
	with Obj_Shooter {
		bodySprite = Spr_ShooterSurprised
		armSprite = Spr_PlayerArmShock
		instance_create_layer(x+16,y-48,"Particles",obj_shock);
	}
	AddScreenShake(4)
}

function HitParticle(_color = enemyColor) {
	repeat(5){
		instance_create_layer(x+floor(random_range(-16,16)),
		y+floor(random_range(-16,16)),
		"Particles",obj_HitPart);
	}
}

function EnemyDie(_enemy = id) {
	with _enemy {
		var i=0;
		repeat(5) {HitParticle(_enemy.enemyColor)}
		instance_destroy()
	}
}
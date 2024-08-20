function TakeLife(){
	Obj_Shooter.playerLives--
	if Obj_Shooter.playerLives <= 0
		LoseGame()
	StartFlyAway()
}

function StartFlyAway() {
	moveSpeed *= -1
	moveSpeedInc = -0.3
	gotLunch = true
}

function LoseGame() {
	with Obj_Shooter {
		bodySprite = Spr_ShooterSurprised
		armSprite = Spr_PlayerArmShock
		instance_create_layer(x+16,y-48,"Particles",obj_shock);
	}
	global.lostGame = true
	audio_play_sound(Snd_Lose, 5, false)
	HighScoreJudgement(Obj_ScoreSystem.totalScore)
	AddScreenShake(4)
}

function HitParticle(_color = enemyColor) {
	repeat(5){
		var particle = instance_create_layer(x+floor(random_range(-16,16)),y+floor(random_range(-16,16)),"Particles",obj_HitPart);
		particle.image_blend = _color
	}
}

function EnemyDie(_enemy = id) {
	with _enemy {
		var i=0;
		repeat(5) {HitParticle(_enemy.enemyColor)}
		instance_destroy()
	}
}
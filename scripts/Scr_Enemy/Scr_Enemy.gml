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
	with Obj_Shooter {
		sprite = Spr_ShooterSurprised
		instance_create_layer(x+16,y-48,"Instances",obj_shock);
	}
}

function HitParticle() {
	repeat(5){
		instance_create_layer(x+floor(random_range(-16,16)),
		y+floor(random_range(-16,16)),
		"Instances",obj_HitPart);
	}
}

function EnemyDie(_enemy = id) {
	with _enemy {
		var i=0;
		HitParticle()
		instance_destroy()
	}
}
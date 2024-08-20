function DrawExplosion() {
	var totalColors = array_length(laserColor) - 1
	for(var i = 0; i < 5; i++) {
		for(var j = 0; j < blastDirectionsSize; j++) {
			var rotation = 15
			switch(blastDirections[j]) {
				case "vert":
				if alarm == 44 show_debug_message("Vertical")
				rotation = 90
				break
		
				case "hori":
				if alarm == 44 show_debug_message("Horizontal")
				rotation = 0
				break
		
				case "slash":
				if alarm == 44 show_debug_message("Slash")
				rotation = 45
				break
		
				case "bslash":
				if alarm == 44 show_debug_message("BackSlash")
				rotation = 135
				break
			}
		
			for (var face = -1; face <= 1; face+=2) {
				var pickColor = (i < 5-1 ? laserColor[irandom(totalColors)] : c_white)
				var laserLife = laserWidth*alarm[0]/alarmSet
				draw_sprite_ext(laserSprite, i, x, y, blastReach*face, laserLife, rotation, pickColor, 1)
			}
		
		}
	}
}

function CauseExplosion(_ball){
	with instance_create_layer(x, y, "Particles", Obj_Explosion) {
		blastType = _ball.type
		blastReach = 175 + 250*(_ball.tier-1)
		blastDirections = _ball.explosionDirections
		laserColor = _ball.ballColor
		blastDirectionsSize = array_length(blastDirections)
		
		var trueTier = clamp(_ball.tier, 1, 3)
		blastSize = sprite_get_width(global.ballSprites[trueTier-1])*(_ball.type==global.numOfBallTiers ? 1.25 : 1)-6
		laserWidth = blastSize / sprite_get_height(laserSprite)
		damage = _ball.tier + _ball.tier-1
		
		var explode = id
		var colorI = array_length(laserColor) > 1
		for(var i = 0; i < 6; i++) {
			with instance_create_layer(_ball.x, _ball.y, "Particles", obj_BallMergePart) {
				image_blend = explode.laserColor[i*colorI]
			}
		}
		AddScreenShake(damage*8)
	}
}

function ExplosionCollision(_angle, _width = blastSize) {
	var sensor = Obj_Sensor
	sensor.x = x; sensor.y = y
	sensor.image_angle = _angle
	sensor.image_xscale = blastReach
	sensor.image_yscale = blastSize / sprite_get_height(Spr_Sensor)
	
	var dmg = damage
	if allowChain {
		with Obj_Ball {
			if place_meeting(x, y, Obj_Sensor) && !merger {
				if tier < dmg {ExplodeBall()}
				else {shudder = dmg}
			}
		}
	}
	
	ds_list_clear(enemiesHit)
	var num = 0; var explode = id
	with (Obj_Sensor) {
		num = instance_place_list(sensor.x, sensor.y, Obj_Enemy, explode.enemiesHit, false)
	}
	
	if num > 0 {
		for (var i = 0; i < num; ++i;) {
			var enemy = enemiesHit[| i]
			
			if (ds_list_find_index(blacklist, enemy) == -1) {
				enemy.hp -= damage
				var enemyInfo = [enemy.x, enemy.y, enemy.points]
				ds_list_add(blacklist, enemy)
				ds_list_add(blacklistPos, enemyInfo)
				
		        if enemy.hp <= 0 {
					AddScore(enemy.points, ds_list_find_index(blacklist, enemy))
					var reduceIfSuper = (blastType == global.numOfBallTypes ? 0.01 : 1)
					AddJuice(damage*reduceIfSuper)
					EnemyDie(enemy)
				} else { with enemy {shudder = 15; HitParticle()} }
			}
	    }
	}
}
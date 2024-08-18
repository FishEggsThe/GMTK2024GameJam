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
				draw_sprite_ext(laserSprite, i, x, y, room_width*face, laserLife, rotation, pickColor, 1)
			}
		
		}
	}
}

function CauseExplosion(_type, _tier){
	with instance_create_layer(x, y, "Particles", Obj_Explosion) {
		blastType = _type
		blastDirections = DetermineExplosion(blastType)
		blastDirectionsSize = array_length(blastDirections)
		var trueTier = clamp(_tier, 1, 3)
		blastSize = sprite_get_width(global.ballSprites[trueTier-1])*(1.25* (tier==global.numOfBallTiers))-6
		laserWidth = blastSize / sprite_get_height(laserSprite)
		damage = _tier + _tier-1
		AddScreenShake(damage*10)
	}
}

function DetermineExplosion(_type){
	var blastDir = []
	switch(_type) {
		case 0:
			blastDir = ["vert", "hori"]
			laserColor[0] = #63AB3F
			break
		case 1:
			blastDir = ["hori"]
			laserColor[0] = #0098DB
			break
		case 2:
			blastDir = ["vert"]
			laserColor[0] = #C00946
			break
		case 3:
			blastDir = ["slash", "bslash"]
			laserColor[0] = #FFC200
			break
		case 4:
			blastDir = ["bslash"]
			laserColor[0] = #9D5618
			break
		case 5:
			blastDir = ["slash"]
			laserColor[0] = #FF5277 
			break
		case 6:
			blastDir = ["vert", "hori", "slash", "bslash"]
			laserColor = array_create(6, c_white)
			laserColor[0] = #63AB3F
			laserColor[1] = #0098DB
			laserColor[2] = #C00946
			laserColor[3] = #FFC200
			laserColor[4] = #9D5618
			laserColor[5] = #FF5277 
			break
	}
	return blastDir
}

function ExplosionCollision(_angle, _width = blastSize) {
	var sensor = Obj_Sensor
	sensor.x = x; sensor.y = y
	sensor.image_angle = _angle
	sensor.image_xscale = room_height*2
	sensor.image_yscale = blastSize / sprite_get_height(Spr_Sensor)
	
	var dmg = damage
	with Obj_Ball {
		if place_meeting(x, y, Obj_Sensor) {
			if tier < dmg {ExplodeBall()}
			else {shudder = dmg}
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
					AddJuice(damage)
					EnemyDie(enemy)
				} else { with enemy {shudder = 15; HitParticle()} }
			}
	    }
	}
}
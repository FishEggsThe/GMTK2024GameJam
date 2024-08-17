function CauseExplosion(_type, _tier){
	with instance_create_layer(x, y, "Instances", Obj_Explosion) {
		blastDirections = DetermineExplosion(_type)
		blastDirectionsSize = array_length(blastDirections)
		blastSize = sprite_get_width(global.ballSprites[_tier-1])-6
		damage = _tier
	}
}

function DetermineExplosion(_type){
	var blastDir = []
	switch(_type) {
		case 0:
			blastDir = ["vert", "hori"]
			break
		case 1:
			blastDir = ["hori"]
			break
		case 2:
			blastDir = ["vert"]
			break
		case 3:
			blastDir = ["slash", "bslash"]
			break
		case 4:
			blastDir = ["bslash"]
			break
		case 5:
			blastDir = ["slash"]
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
	
	ds_list_clear(enemiesHit)
	var num = 0; var explode = id
	with (Obj_Sensor) {
		num = instance_place_list(sensor.x, sensor.y, Obj_Enemy, explode.enemiesHit, false)
	}
	
	if num > 0 {
		for (var i = 0; i < num; ++i;) {
			var enemy = enemiesHit[| i]
			//show_debug_message(enemy)
			if (ds_list_find_index(blacklist, enemy) == -1) {
				enemy.hp -= damage
		        if enemy.hp <= 0
					instance_destroy(enemy)
				else
					ds_list_add(blacklist, enemy);
			}
	    }
	}
}
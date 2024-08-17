function CauseExplosion(_type, _tier){
	with instance_create_layer(x, y, "Instances", Obj_Explosion) {
		blastDirections = DetermineExplosion(_type)
		blastSize = sprite_get_width(global.ballSprites[_tier-1])-6
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
function CauseExplosion(type){
	with instance_create_layer(x, y, "Instances", Obj_Explosion) {
		blastDirections = DetermineExplosion(type)
	}
}

function DetermineExplosion(type){
	var blastDir = []
	switch(type) {
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
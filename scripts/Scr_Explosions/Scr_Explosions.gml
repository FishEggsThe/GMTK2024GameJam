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
		case 1:
			blastDir = ["hori"]
		case 2:
			blastDir = ["vert"]
		case 3:
			blastDir = ["slash", "bslash"]
		case 4:
			blastDir = ["bslash"]
		case 5:
			blastDir = ["slash"]
	}
	return blastDir
}
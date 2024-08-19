for(var i = 0; i < blastDirectionsSize; i++) {
	switch(blastDirections[i]) {
		case "vert":
		ExplosionCollision(90)
		break
		
		case "hori":
		ExplosionCollision(0)
		break
		
		case "slash":
		ExplosionCollision(45)
		break
		
		case "bslash":
		ExplosionCollision(135)
		break
	}
}

allowChain = false
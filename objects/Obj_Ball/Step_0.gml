if moveSpeed > 0 {
	MoveBall()
} else {
	moveSpeed = 0; flying = false
	ResetBounced()
}

if place_meeting(x, y, Obj_Enemy) {ExplodeBall()}
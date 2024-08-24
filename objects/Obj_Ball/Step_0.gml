mask_index = global.ballSprites[tier-1]
if moveSpeed > 0 {
	MoveBall()
} else {
	timesBounced = 0
	moveSpeed = 0; flying = false
	ResetBounced()
}
if flash > 0 {flash--}

if place_meeting(x, y, Obj_Enemy) {ExplodeBall()}

if instance_number(Obj_Ball) > 10 {instance_destroy()}
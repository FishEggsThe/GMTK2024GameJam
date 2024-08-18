function ShootBall(_speed, _type, _angle) {
	if _type == global.numOfBallTypes {
		with instance_create_layer(x, y, "Instances", Obj_SuperBall) {
			moveAngle = _angle
			moveSpeed = _speed
		}
		juice = 0
		givenJuicedBall = false
	}
	else {
		with instance_create_layer(x, y, "Instances", Obj_Ball) {
			type = _type
			moveAngle = _angle
			trueSpeed = power(_speed, 1.1)
			//var xPos = x + cos(degtorad(moveAngle))*_speed
			//var yPos = y + sin(degtorad(moveAngle))*_speed
			//var dist = point_distance(x, y, xPos, yPos)
			//moveSpeed = sqrt(2*moveFriction*dist)
			moveSpeed = _speed
		}
	}
	CycleQueue()
}

function CycleQueue() {
	for(var i = 0; i < ballQueueSize-1; i++)
		ballQueue[i] = ballQueue[i+1]
	ballQueue[ballQueueSize-1] = irandom(global.numOfBallTypes-1)
	
	if juice >= maxJuice && !givenJuicedBall {
		givenJuicedBall = true
		ballQueue[ballQueueSize-1] = global.numOfBallTypes
	}
}

function AddJuice(_juice) {
	Obj_Shooter.juice+=_juice*1.5
	if Obj_Shooter.juice > Obj_Shooter.maxJuice {Obj_Shooter.juice = Obj_Shooter.maxJuice}
}

// Ian script
function scr_shocking(){
    if(instance_exists(obj_shock) == true){
        sprite_index = Sprite15;
        image_index = 0;
    } else {
        exit;
    }
}
// if speed isn't 0 it decreases it
if(speed = 0){
} else {
	speed = speed - speed/10;
}
// when speed is low enough it's set to 0
if(speed < 0.1){
	speed = 0;
}

// once speed gets low enough, the hit particle slowly fades away
if(speed < initialSpeed/7.5){
	scaleRandomness = scaleRandomness - scaleRandomness/10;
}
// size diminishing thing
image_xscale = scaleRandomness;
image_yscale = scaleRandomness;

// applies constant rotation based on rotationValue variable
image_angle = image_angle + rotationValue;

// DIE
if(scaleRandomness <= 0.005){
	instance_destroy(self);
	//show_message(string(x) + ", " + string(y))
}
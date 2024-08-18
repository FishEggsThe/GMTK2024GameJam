// if speed isn't 0 it decreases it
if(speed = 0){
} else {
	speed = speed - speed/10;
}
// when speed is low enough it's set to 0
if(speed > -0.1){
	speed = 0;
}

// once speed gets low enough, the hit particle slowly fades away
if(speed > initialSpeed/7.5){
	image_alpha = image_alpha - image_alpha/10;
}
// DIE
if(image_alpha <= 0.05){
	instance_destroy(self);
}

// de-squash and de-strech over the span of 40 frames
if(image_xscale < 1) && (image_yscale > 1){
	image_xscale = image_xscale+0.025;
	image_yscale = image_yscale-0.05;
}
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
    scaleRandomness = scaleRandomness - scaleRandomness/10;
}

// de-squash and de-strech over the span of 40 frames
if(squash < 1){
    squash = squash+0.025;
}
if(stretch > 1){
    stretch = stretch-0.05;
}

image_xscale = scaleRandomness*squash;
image_yscale = scaleRandomness*stretch;

// DIE
if(scaleRandomness <= 0.005){
    instance_destroy(self);
}
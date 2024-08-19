// increases this value for fading in and out
imageScale += 0.024;

// fading in and out
image_alpha = sin(imageScale);
image_xscale = sin(imageScale);
image_yscale = sin(imageScale);

// DIE when you fade back out
if(sin(imageScale) < 0){
	instance_destroy(self);
}

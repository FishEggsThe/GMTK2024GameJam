// color of the sprite is white so you can set it to the color of the ballllll
image_blend = #6F00B0;

// gets a random speed value
randomize();
speed = random_range(5,20);
initialSpeed = speed;

// sets the direction to up while also applying some random spread
direction = random_range(1,360);
image_angle = direction;

// sets up the squash and strech
squash = 0.5;
stretch = 2;

// you replace ballTier with the merged ball's tier
ballTier = 3;
// you replace ballTier with the merged ball's tier

// what the variable says
scaleRandomness = random_range(0.25,1)*ballTier/3;

/*
SPAWN CODE: (spawn layer should be the same as the balls')

var i=0;
for(i=0; i < 6; i++){
 instance_create_layer(mouse_x, mouse_y, "Instances",obj_BallMergePart);
}
*/




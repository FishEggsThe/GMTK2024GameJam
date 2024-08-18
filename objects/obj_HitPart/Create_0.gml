// color of the sprites are white so you can set it to the color of the enemy
image_blend = #6F00B0;

// gets a random speed value
randomize();
speed = random_range(-7.5,-30);
initialSpeed = speed;

// sets the direction to up while also applying some random spread
direction = -90 + random_range(-12,12);
image_angle = direction + 90;

// chooses a random size from the object's sprite
image_speed = 0;
image_index = random_range(0,5);

// sets up the squash and strech
squash = 0.5;
stretch = 2;

// what the variable says
scaleRandomness = random_range(0.8,1.2);
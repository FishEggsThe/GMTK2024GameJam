// gets a random speed value
randomize();
speed = random_range(5,20);
initialSpeed = speed;

// sets the direction to up while also applying some random spread
direction = Obj_Shooter.shootAngle + random_range(30,60);
// makes it shoot either to the left or right of the direction pointed
directionSide = choose(90,0);
direction = direction - directionSide;

// how fast the particle's gonna rotate and to which side
rotationValue = random_range(20,-20);

// chooses a random size from the object's sprite
image_speed = 0;
image_index = random_range(0,5);

// what the variable says
scaleRandomness = random_range(0.5,2);
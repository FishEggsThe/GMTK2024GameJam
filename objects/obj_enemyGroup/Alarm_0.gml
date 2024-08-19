

// sets spawn point for eyes
// increase both values by 270
xChoice = random_range(9,540);
// the second value should increase with difficulty
yChoice = random_range(0,75);

// creates the eye visual
instance_create_layer(xChoice,yChoice,"Instances_1",obj_enemyEyes);

// repeats this after 20 frames
alarm_set(0,20)
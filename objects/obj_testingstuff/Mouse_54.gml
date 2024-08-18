///@desc enemy hit fx

// MAKE THIS HAPPEN WHEN AN ENEMY IS HIT
var i=0;
for(i=0; i < 5; i++){
 instance_create_layer(mouse_x+floor(random_range(-16,16)),
 mouse_y+floor(random_range(-16,16)),
 "Instances",obj_HitPart);
}


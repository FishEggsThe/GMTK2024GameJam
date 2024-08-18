/// @desc spawn shock obj

// ADD A LAYER ON TOP OF THE PLAYER SO THAT THE SHOCK SPRITE OVERLAYS PEDRO
// creates the shock obj spawn. I made this obj for testing
with(obj_directiontest){
instance_create_layer(x+16,y-48,"Instances",obj_shock);
}
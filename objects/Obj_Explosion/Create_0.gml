blastDirections = []
blastDirectionsSize = 0//array_length(blastDirections)
blastSize = 0
alarm[0] = 45

if !instance_exists(Obj_Sensor) {
	instance_create_depth(0,0,0,Obj_Sensor)
	Obj_Sensor.image_alpha = 0
}
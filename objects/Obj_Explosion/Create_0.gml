blastDirections = []
blastDirectionsSize = 0//array_length(blastDirections)
blastSize = 0
damage = 1
alarmSet = 45
alarm[0] = alarmSet

blastType = 0
laserSprite = Spr_SuperLaser
laserColor = [c_white]

enemiesHit = ds_list_create()
blacklist = ds_list_create()
blacklistPos = ds_list_create()

if !instance_exists(Obj_Sensor) {
	instance_create_depth(0,0,0,Obj_Sensor)
}
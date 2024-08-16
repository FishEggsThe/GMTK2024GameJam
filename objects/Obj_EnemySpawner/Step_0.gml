spawnRate--
if spawnRate < 0 {
	instance_create_layer(random_range(270+75, 810-75), -30, "Instances", Obj_Enemy)
	spawnRate = spawnRateSet
}
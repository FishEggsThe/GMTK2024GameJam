x = room_width/2
y = room_height-30

shootAngle = 90
shotPower = 0
shotPowerMax = 20

ballQueueSize = 3
ballQueue = array_create(ballQueueSize, 0)
for(var i = 0; i < ballQueueSize; i++)
	ballQueue[i] = irandom(2)
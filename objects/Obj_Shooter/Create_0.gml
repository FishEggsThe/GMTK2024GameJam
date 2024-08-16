x = room_width/2
y = room_height+30

shootAngle = 90

ballQueueSize = 3
ballQueue = array_create(ballQueueSize, 0)
for(var i = 0; i < ballQueueSize; i++)
	ballQueue[i] = 0//irandom(2)
sprite = Spr_Shooter
x = room_width/2
y = room_height-45

shootAngle = 90
shotPower = 0
shotPowerMax = 34
shotPowerTrueMax = 30
shotPowerMin = 8
canShoot = true
canPower = false
shotDelay = 5
reversePower = false

juice = 0
maxJuice = 100
givenJuicedBall = false

playerLives = 3
surprise = 0
surpriseInc = 12/60

ballQueueSize = 3
ballQueue = array_create(ballQueueSize, 0)
for(var i = 0; i < ballQueueSize; i++)
	ballQueue[i] = irandom(5)//global.numOfBallTypes-1)
reserveBall = -1
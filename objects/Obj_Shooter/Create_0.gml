bodySprite = Spr_Shooter
armSprite = Spr_PlayerArm
x = room_width/2
y = room_height-75
recoil = 0
setRecoil = 10

shootAngle = 90
shotPower = 0
shotPowerMax = 34
shotPowerTrueMax = 30
shotPowerMin = 8
canShoot = false
canPower = false
shotDelay = 5
reversePower = false

overheat = 0
overheatInc = 20
overheatDec = 0.25
maxOverheat = 100
enableOverheat = false

juice = 0
maxJuice = 100
givenJuicedBall = false
juiceFrame = 0
juiceFrameInc = 12/60
juiceClipSurface = surface_create(82, 298)

playerLives = 3

ballQueueSize = 3
ballQueue = array_create(ballQueueSize, 0)
for(var i = 0; i < ballQueueSize; i++)
	ballQueue[i] = irandom(5)//global.numOfBallTypes-1)
reserveBall = -1
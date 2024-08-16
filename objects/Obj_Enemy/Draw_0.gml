rotate += rotateInc
draw_sprite_ext(bodySprite, 0, x, y, 1, 1, rotate*sin(degtorad(rotate*4)), c_white, 1)

var range = 14
var xPos = x + clamp((Obj_Shooter.x-x)/17, -range, range)
var yPos = y + clamp((Obj_Shooter.y-y)/17, -range, range)
//draw_sprite_ext(Spr_EnemyEyes, 0, xPos, yPos, 1, 1, 5*sin(degtorad(rotate*4)), c_white, 1)
draw_sprite(Spr_EnemyEyes, 0, xPos, yPos);
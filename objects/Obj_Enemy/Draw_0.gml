rotate += rotateInc
draw_sprite_ext(bodySprite, 0, x, y, 1, 1, rotate*sin(degtorad(rotate*4)), c_white, 1)

var dir = point_direction(x, y, mouse_x, mouse_y); var scale = 10
var xPos = x + cos(degtorad(dir))*scale
var yPos = y - sin(degtorad(dir))*scale
draw_sprite_ext(Spr_EnemyEyes, 0, xPos, yPos, 1, 1, 5*sin(degtorad(rotate*4)), c_white, 1)
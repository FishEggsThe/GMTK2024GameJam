rotate += rotateInc
var xPos = x; var yPos = y
if shudder > 0 {
	xPos += random_range(-shudder, shudder)
	yPos += random_range(-shudder, shudder)
	shudder--
}
draw_sprite_ext(bodySprite, bodyIndex, xPos, yPos, 1, 1, rotate*sin(degtorad(rotate*4)), c_white, 1)

var range = 14
var xEyes = x + clamp((Obj_Shooter.x-x)/17, -range, range)
var yEyes = y + clamp((Obj_Shooter.y-y)/17, -range, range)
//draw_sprite_ext(Spr_EnemyEyes, 0, xPos, yPos, 1, 1, 5*sin(degtorad(rotate*4)), c_white, 1)
draw_sprite(Spr_EnemyEyes, gotLunch, xEyes, yEyes)
if gotLunch {
	xEyes = 0; yEyes = 90
	draw_sprite(Spr_Lunch, 0, x, y-sprite_get_height(bodySprite)/2-sprite_get_height(Spr_Lunch)/3)
}

var barWidth = 20/2; var barHeight = 20/2
draw_rectangle_color(x-barWidth-3, y+20+barHeight-3, x+barWidth+3, y+20+2*barHeight+3, c_black, c_black, c_black, c_black, false)
draw_rectangle_color(x-barWidth, y+20+barHeight, x+barWidth, y+20+2*barHeight, c_red, c_red, c_red, c_red, false)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_color(x, y+20+barHeight*1.5, hp, c_black, c_black, c_black, c_black, 1)
DrawGregText(hp, x, y+20+barHeight*1.5, 2, fa_center, fa_middle)
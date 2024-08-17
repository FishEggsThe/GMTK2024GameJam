var xPos = x - cos(degtorad(shootAngle))*alarm[0]
var yPos = y + sin(degtorad(shootAngle))*alarm[0]
draw_sprite_ext(Spr_PlayerArm, 0, xPos, yPos, 1, 1, shootAngle, c_white, 1)
draw_sprite(Spr_Shooter, image_index, x, y)

//var length = 50
//var xPoint = x+2*length*cos(degtorad(shootAngle))
//var yPoint = y-2*length*sin(degtorad(shootAngle))
//draw_set_color(c_white)
//draw_arrow(x, y, xPoint, yPoint, 30)

if shotPower > 0 {
	var length = 50
	var xPower = x+(2*shotPower*length/shotPowerMax)*cos(degtorad(shootAngle))
	var yPower = y-(2*shotPower*length/shotPowerMax)*sin(degtorad(shootAngle))
	draw_set_color(c_green)
	draw_arrow(x, y, xPower, yPower, 30)
}
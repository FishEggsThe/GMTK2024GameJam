draw_self()
var length = 50
var xPoint = x+2*length*cos(degtorad(shootAngle))
var yPoint = y-2*length*sin(degtorad(shootAngle))
draw_arrow(x, y, xPoint, yPoint, length)
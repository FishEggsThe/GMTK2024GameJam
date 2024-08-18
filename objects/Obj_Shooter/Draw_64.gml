var width = display_get_gui_width()
var height = display_get_gui_height()

var size = []

// Right
// Ball Queue
for(var i = 0; i < ballQueueSize; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	DrawBall(ballQueue[i], size, 1, width-180, height-120*(i+1)+60)
}
if reserveBall > -1
	DrawBall(reserveBall, [1, 1], 1, width-90, height-60)

// Left
// Lives
for(var i = 0; i < playerLives; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	draw_sprite_ext(chives, 0, 60, height-120*(i+1)+60, size[0], size[1], 1, c_white, 1)
}

// Juice
var xJuice = 115; var xMaxJuice = 255
var juiceAmount = (xMaxJuice-xJuice)*(juice/maxJuice)
draw_set_color(c_dkgray)
draw_rectangle(xJuice-5, height-60, xMaxJuice+5, height-10, false)
draw_set_color(c_teal)
draw_rectangle(xJuice, height-55, xJuice+juiceAmount, height-15, false)
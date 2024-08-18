var width = display_get_gui_width()
var height = display_get_gui_height()

var size = []
for(var i = 0; i < ballQueueSize; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	DrawBall(ballQueue[i], size, 1, width-120, height-120*(i+1)+60)
}
if reserveBall > -1
	DrawBall(reserveBall, [1, 1], 1, width-60, height-60)

for(var i = 0; i < playerLives; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	draw_sprite_ext(chives, 0, 120, height-120*(i+1)+60, size[0], size[1], 1, c_white, 1)
}
var width = display_get_gui_width()
var height = display_get_gui_height()

for(var i = 0; i < ballQueueSize; i++) {
	DrawBall(ballQueue[i], width-60, height-60*(i+1))
}
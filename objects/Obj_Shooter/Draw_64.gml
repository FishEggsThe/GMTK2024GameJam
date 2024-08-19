if !global.gameStart {exit}

var width = display_get_gui_width()
var height = display_get_gui_height()

// Left
// Juice
juiceFrame += juiceFrameInc
if juiceFrame >= 18 {juiceFrame-=18}
var juiceAmount = juice/maxJuice
var juiceHeight = sprite_get_height(Spr_Juice)
//var yJuicePos = room_height-320 + juiceHeight-juiceHeight*juiceAmount
var yJuicePos = room_height-320 + juiceHeight*juiceAmount

//draw_sprite(Spr_Juice, juiceFrame, 200, room_height-30)
//draw_set_color(#1E1E1E)//#2B0C30
//draw_rectangle(163, room_height-320, 235, yJuicePos, false)
//var colors = array_create(6, c_white)
//colors[0] = #63AB3F
//colors[1] = #0098DB
//colors[2] = #C00946
//colors[3] = #FFC200
//colors[4] = #9D5618
//colors[5] = #FF5277
var color = choose(#63AB3F, #0098DB, #C00946, #FFC200, #9D5618, #FF5277)
for(var i = 0; i < 6; i++){
	if i == 5 {color = c_white}
	//var color = choose(#63AB3F, #0098DB, #C00946, #FFC200, #9D5618, #FF5277)
	draw_sprite_ext(Spr_SuperLaser, i, 200, room_height-30, 
					juiceHeight*juiceAmount, 1, 90, color, 1)
}

draw_sprite(Spr_JuiceMeter, 0, 200, room_height-30)

// Lives
var size = []
for(var i = 0; i < playerLives; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	draw_sprite_ext(Spr_Lunch, 0, 60, height-120*(i+1)+60, size[0], size[1], 1, c_white, 1)
}

// Right
// Ball Queue
for(var i = 0; i < ballQueueSize; i++) {
	size = (i == 0 ? [2, 2] : [1, 1])
	DrawBall(ballQueue[i], size, 1, width-180, height-120*(i+1)+60)
}
if reserveBall > -1
	DrawBall(reserveBall, [1, 1], 1, width-90, height-60)
if !global.gameStart {exit}

var width = display_get_gui_width()
var height = display_get_gui_height()

// Left
// Juice
juiceFrame += juiceFrameInc
if juiceFrame > 17 {juiceFrame-=17}
var juiceAmount = juice/maxJuice
var juiceHeight = sprite_get_height(Spr_Juice)
var yJuicePos = room_height-320 + juiceHeight-juiceHeight*juiceAmount

draw_set_color(c_black)//#2B0C30
draw_rectangle(200+5-sprite_get_width(Spr_JuiceMeter)/2, room_height-30+10, 
200+5+sprite_get_width(Spr_JuiceMeter)/2, room_height-30+10-juiceHeight, false)

draw_sprite(Spr_Juice, juiceFrame, 200, room_height-30)
draw_set_color(#1E1E1E)//#2B0C30
draw_rectangle(163, room_height-320, 240, yJuicePos, false)

//var yJuicePos = room_height-320 + juiceHeight*juiceAmount
//var color = choose(#63AB3F, #0098DB, #C00946, #FFC200, #9D5618, #FF5277)
//for(var i = 0; i < 5; i++){
//	if i == 4 {color = c_white}
//	//var color = choose(#63AB3F, #0098DB, #C00946, #FFC200, #9D5618, #FF5277)
//	draw_sprite_ext(Spr_SuperLaser, i, 200, room_height-30, 
//					juiceHeight*juiceAmount, 2.25, 90, color, 1)
//}

draw_sprite(Spr_JuiceMeter, 0, 200, room_height-30)

// Lives
for(var i = 0; i < playerLives; i++) {
	draw_sprite_ext(Spr_Lunch, 0, 60+2*2+5, height-120*(i+1)+60+2*2+5, 2, 2, 1, c_black, 1)
	draw_sprite_ext(Spr_Lunch, 0, 60+2*2, height-120*(i+1)+60+2*2, 2, 2, 1, c_white, 1)
}

// Right
// Ball Queue
for(var i = 0; i < ballQueueSize; i++) {
	var size = (i == 0 ? [2, 2] : [1, 1])
	DrawBall(ballQueue[i], size, 1, width-180, height-120*(i+1)+60)
}
if reserveBall > -1
	DrawBall(reserveBall, [2, 2], 1, width-90, height-60)
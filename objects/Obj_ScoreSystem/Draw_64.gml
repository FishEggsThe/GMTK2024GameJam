if !global.gameStart {
	for(var i = 0; i < 3; i++) {
		var playerName = highScores[i][0]
		var playerScore = highScores[i][1]
		var size = 3
		var yOffset = room_height*5/8 + i*2*size*(global.fontHeight+6)
		DrawGregText(playerName, room_width/2,yOffset, size, fa_center)
		DrawGregText(playerScore, room_width/2, yOffset+3, size, fa_center, fa_bottom)
	}
} else {
	DrawGregText("Score: \n" + string(totalScore), 5, 5, 3)
}

if newHighScore {
	DrawGregText("NEW HIGH SCORE!!!", 5, 5+5*(global.fontHeight+6), 3)
}

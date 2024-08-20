function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
	Obj_ScoreSystem.pointsUntilLife -= _points*multiplier
}

function DrawGregText(_string, _x, _y, _size = 3, _halign = fa_left, _valign = fa_top, _outline = true) {
	var trueString = ""
	trueString = string(_string)
	trueString = string_upper(trueString)
	
	var characterIndex = -1
	var stringLength = string_length(trueString)
	var setXOffset = 0
	switch(_halign) {
		//case fa_left:
		//setXOffset = 0
		//break
		case fa_center:
		setXOffset = -stringLength*global.fontWidth*_size/2
		break
		case fa_right:
		setXOffset = -stringLength*global.fontWidth*_size
		break
	}
	var xOffset = setXOffset
	var yOffset = 0
	switch(_valign) {
		//case fa_top:
		//yOffset = 0
		//break
		case fa_middle:
		yOffset = -(global.fontHeight+3)*_size/2
		break
		case fa_bottom:
		yOffset = -(global.fontHeight+3)*_size
		break
	}
	
	for(var i = 0; i < stringLength; i++) {
		var character = string_copy(trueString, i+1, 1)
		
		if character == "\n" {
			yOffset += (global.fontHeight+3)*_size
			xOffset = setXOffset
			continue
		}
			
		characterIndex = -1
		for(var j = 0; j < global.containsLength; j++) {
			var contain = string_copy(global.fontContains, j+1, 1)
			if character == contain {
				characterIndex = j
				break
			}
		}
		if characterIndex > -1 {
			if _outline
				draw_sprite_ext(global.fontSprite, characterIndex, _x+xOffset+_size*2, _y+yOffset+_size*2, 
								_size, _size, 0, c_black, 1)
			
			draw_sprite_ext(global.fontSprite, characterIndex, _x+xOffset, _y+yOffset, 
							_size, _size, 0, c_white, 1)
		}
		xOffset += global.fontWidth*_size
	}
	
}

function HighScoreJudgement(_score = Obj_ScoreSystem.totalScore) {
	with Obj_ScoreSystem {
		placementIndex = -1
		for(var i = 0; i < 3; i++) {
			if _score > highScores[i][1] {
				placementIndex = i; break
			}
		}
	
		if placementIndex > -1 {
			newHighScore = true
			setHighScoreName = true
			for(var i = 0; i < 3; i++) {
				with instance_create_layer(room_width*(1.65+i*0.35)/4, room_height/2, "Borders", Obj_NameButton) {
					var size = 5
					image_xscale = size
					image_yscale = size
					nameIndex = i
				}
			}
		}
	}
}

function SetHighScore(_name, _score, _place) {
	for(var i = placementIndex; i < 2; i++) {
			highScores[i][0] = highScores[i+1][0]
			highScores[i][1] = highScores[i+1][1]
		}
		highScores[placementIndex][0] = _name
		highScores[placementIndex][1] = Obj_ScoreSystem.totalScore
		
	file = file_text_open_write("highscores.txt")
	var highScoresString = ""
	for(var i = 0; i < 3; i++) {
		highScoresString += highScores[i][0] + "$" + string(highScores[i][1])
		if i < 2 {highScoresString += "\n"}
	}
	file_text_write_string(file, highScoresString)
	file_text_close(file)
}
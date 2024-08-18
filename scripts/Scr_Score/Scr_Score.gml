function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
}

function DrawGregText(_string, _x, _y, _size = 3, _halign = fa_left, _valign = fa_top) {
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
			draw_sprite_ext(global.fontSprite, characterIndex, _x+xOffset, _y+yOffset, 
							_size, _size, 0, c_white, 1)
		}
		xOffset += global.fontWidth*_size
	}
	
}
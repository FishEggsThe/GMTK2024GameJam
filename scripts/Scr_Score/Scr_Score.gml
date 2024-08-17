function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
}

function DrawGregText(_string, _x, _y, _size = 1, _valign = fa_center, _halign = fa_middle) {
	var trueString = ""
	trueString = string(_string)
	trueString = string_upper(trueString)
	
	var characterIndex = -1
	var stringLength = string_length(trueString)
	var xOffset = 0; var yOffset = 0
	
	for(var i = 0; i < stringLength; i++) {
		show_debug_message("String length is existing")
		var character = string_copy(trueString, i+1, 1)
		
		if character == "\n" {
			yOffset += (global.fontHeight+3)*_size
			xOffset = 0
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
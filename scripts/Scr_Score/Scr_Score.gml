function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
}

function DrawGregText(_string, _x, _y, _valign = fa_center, _halign = fa_middle) {
	var trueString = ""
	trueString = string(_string)
	trueString = string_upper(trueString)
	
	var characterIndex = -1
	var stringLength = string_length(trueString)
	var offset = 0
	
	for(var i = 0; i < stringLength; i++) {
		show_debug_message("String length is existing")
		var character = string_copy(trueString, i+1, 1)
		
		for(var j = 0; j < global.containsLength; j++) {
			show_debug_message("Contains length is ALSO existing")
			var contain = string_copy(global.fontContains, j+1, 1)
			show_debug_message(character + " " + contain)
			if character == contain {
				characterIndex = j
				break
			}
		}
		if characterIndex > -1 {
			draw_sprite(global.fontSprite, characterIndex, _x+offset, _y)
		}
		offset += global.fontWidth
	}
	
}
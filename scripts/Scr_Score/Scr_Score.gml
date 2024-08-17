function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
}

function DrawText(_string, _valign = fa_center, _halign = fa_middle) {
	var stringLength = string_length(_string)
	
	for(var i = 0; i < stringLength; i++) {
		var character = string_copy(_string, i, 1)
		
		for(var j = 0; j < global.containsLength; j++) {
			var contain = string_copy(global.fontContains, i, 1)
		}
	}
}
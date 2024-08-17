function AddScore(_points, spotCheck = 0, tier = 0){
	var multiplier = 1
	var multAdd = spotCheck - 1
	if multAdd > 0 {multiplier += multAdd}
	
	Obj_ScoreSystem.totalScore += _points*multiplier
}
function AddScreenShake(_amount){
		with Obj_Camera {
		if _amount > Obj_Camera.screenShake
			Obj_Camera.screenShake = _amount
	}
}

function SetCursor(_index) {
	Obj_Control.cursorIndex = _index
}

var i = 0
for(var i = 0; i < 10; i++) {
	i = 10
}

repeat(3){x=x}
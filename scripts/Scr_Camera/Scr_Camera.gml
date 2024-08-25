function AddScreenShake(_amount){
		with Obj_Camera {
		if _amount > Obj_Camera.screenShake
			Obj_Camera.screenShake = _amount
	}
}

function SetCursor(_index) {
	Obj_Control.cursorIndex = _index
}

function ScreenTransition(_doDuringTransition, _vertical = false) {
	if instance_exists(Obj_Transition) {exit}
	
	with instance_create_layer(0, 0, "Particles", Obj_Transition) {
		doDuringTransition = _doDuringTransition
		vertical = _vertical
		if vertical {image_yscale = room_height}
	}
}
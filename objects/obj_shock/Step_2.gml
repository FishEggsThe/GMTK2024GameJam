//// when the shock sprite is at its last frame
//if(image_index = 5){
//	// set sprite to nothing
//	sprite_index = cr_none;
//	// with Pedro
//	with(obj_directiontest){
//		// set alarm to 45 frames (dontSetAlarm variable is important to impede alarm not counting down)
//		if (dontSetAlarm = 0){
//			alarm_set(0,45);
//			dontSetAlarm = 1;
//		}
//	}
//	// shock object is destroyed
//	instance_destroy(self);
//}
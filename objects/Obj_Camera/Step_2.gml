#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height)

var xPos = x + random_range(-screenShake, screenShake)
var yPos = y + random_range(-screenShake, screenShake)
camera_set_view_pos(view, xPos, yPos)

reduce = !reduce
if (screenShake > 0 && reduce) {
	screenShake -= screenShakeReduce;
	screenShake = clamp(screenShake, 0, 999999);
}
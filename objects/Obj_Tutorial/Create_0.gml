pageNumber = 6
pageIndex = 0

leftArrow = instance_create_layer(x-50, y-5, "Instances", Obj_TutorialArrow)
with leftArrow {nextPage = -1; image_xscale *= -1}
rightArrow = instance_create_layer(x+50, y-5, "Instances", Obj_TutorialArrow)
//with rightArrow {nextPage = -1; image_xscale *= -1}
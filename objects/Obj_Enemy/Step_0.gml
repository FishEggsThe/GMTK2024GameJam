if !global.lostGame {
	y += moveSpeed

	if y > room_height+sprite_get_height(bodySprite) {TakeLife()}
}

//var i=0
//for(i=0; i<1; i=i+0.1) {
//    draw_sprite
//    (dot, 0,

//    lengthdir_x((xypithagorean)i,direction)+lengthdir_x(clamp(xypithagorean/150,0.5,1.5)850.85,direction)+x,

//    lengthdir_y((xypithagorean)i,direction)+lengthdir_y(clamp(xypithagorean/150,0.5,1.5)850.85,direction)+y);
//};
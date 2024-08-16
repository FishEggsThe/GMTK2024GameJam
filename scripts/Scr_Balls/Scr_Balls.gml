function DrawBall(_type, xPos = x, yPos = y) {
	draw_sprite_ext(global.ballSprites[_type], 0, xPos, yPos, 1, 1, _type*90, c_white, 1)
}
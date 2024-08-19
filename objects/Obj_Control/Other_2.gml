global.debug = false

global.ballSprites = [Spr_Balls1, Spr_Balls2, Spr_Balls3]
global.numOfBallTypes = 6
global.numOfBallTiers = array_length(global.ballSprites)

global.fontSprite = Spr_Font
global.fontWidth = sprite_get_width(global.fontSprite)
global.fontHeight = sprite_get_height(global.fontSprite)
global.fontContains = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,():;!?/'\"<>[]{}#@%-_*"
global.containsLength = string_length(global.fontContains)

global.gameStart = false
global.lostGame = false
global.allowRestart = false

image_alpha = 0.25

window_set_cursor(cr_none)
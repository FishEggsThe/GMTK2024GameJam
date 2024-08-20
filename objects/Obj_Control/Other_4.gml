global.gameStart = false
global.lostGame = false
global.allowRestart = false

if !audio_is_playing(Msc_Menu)
	audio_play_sound(Msc_Menu, 0, true)
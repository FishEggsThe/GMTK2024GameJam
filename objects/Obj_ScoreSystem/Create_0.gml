totalScore = 0
setPointsUntilLife = 10000
pointsUntilLife = setPointsUntilLife
highScores = [[], [], []]
newHighScore = false
setHighScoreName = false
placementIndex = -1
importantNote = "Pretty please don't mess with this with a cherry on top 3:"
	
file = noone
var filename = program_directory + "highscores.txt"
//file_delete(filename)
show_debug_message(program_directory)
show_debug_message(file_exists(filename))
if !file_exists(filename) {
	file = file_text_open_write(filename)
	//show_message(filename)
	var highScoresString = "FSH$50000\n"
		highScoresString +="IAN$40000\n"
		highScoresString +="!?#$1"
	file_text_write_string(file, highScoresString)
	file_text_write_string(file, "\n" + importantNote)
	file_text_close(file)
}

//show_debug_message(game_save_id)
file = file_text_open_read(filename)
for(var i = 0; i < 3; i++) {
	highScores[i] = array_create(2, noone)
	var highScore = string_split(file_text_read_string(file), "$")
	highScores[i][0] = highScore[0]
	highScores[i][1] = int64(highScore[1])
	show_debug_message(highScores[i])
    file_text_readln(file)
}

file_text_close(file)
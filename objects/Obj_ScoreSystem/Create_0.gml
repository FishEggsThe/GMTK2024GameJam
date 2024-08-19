totalScore = 0
setPointsUntilLife = 10000
pointsUntilLife = setPointsUntilLife
highScores = []
	
file = noone
var filename = "dontopenplease.txt"
//file_delete(filename)

show_debug_message(file_exists("dontopenplease.txt"))
if !file_exists("dontopenplease.txt") {
	file = file_text_open_write("dontopenplease.txt")
	var highScoresString = "50000$AAA\n"
		highScoresString +="40000$BBB\n"
		highScoresString +="30000$CCC\n"
		highScoresString +="20000$DDD\n"
		highScoresString +="10000$EEE"
	file_text_write_string(file, highScoresString)
	file_text_close(file)
}

show_debug_message(game_save_id)
file = file_text_open_read("dontopenplease.txt")
repeat(5) {
	show_debug_message(file_text_read_string(file))
    file_text_readln(file)
}

file_text_close(file)
var scoreEarned = 0
for(var i = 0; i < ds_list_size(blacklist); i++) {
	show_debug_message(string(i) + ": " + string(blacklist[| i]))
	scoreEarned += blacklistPos[| i][2]
}

ds_list_destroy(enemiesHit)
ds_list_destroy(blacklist)
instance_destroy()
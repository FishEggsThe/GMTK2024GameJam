pageTexts = [
"YOU GOT SOME PRETTY \nFOOD TODAY, BUT IT \nSEEMS THAT THE OWNERS \nOF THAT FOOD AREN'T \nREALLY HAPPY ABOUT \nTHAT!",
"USE THE LEFT MOUSE \nBUTTON TO AIM AND \nCHARGE A BALL INTO \nYOUR DESIRED DIRECTION",
"BALLS OF THE SAME TYPE \nMERGE WHEN COLLIDED",
"WHEN THE ULTRA METER \nIS FILLED, AN ULTRA \nBALL IS ADDED TO THE \nQUEUE. HANDLE WITH \nCAUTION",
"PRESSING THE SPACE BAR \nPUTS THE NEXT BALL \nINTO STORAGE. STORED \nBALLS CAN BE SWAPPED \nBACK LATER",
"BALLS EXPLODE WHEN \nTHEY TOUCH ENEMIES. \nBIGGER BALLS MEAN \nBIGGER EXPLOSIONS AND \nDAMAGE ",
"BALLS CAN TRIGGER \nSMALLER BALLS, FORMING \nEXPLOSION CHAINS",
"DIFFERENT ENEMY TYPES \nMAY APPEAR AFTER A \nCERTAIN WHILE, WATCH \nOUT!",
"IF YOU LOSE ALL 3 \nLUNCH BOXES, YOU LOSE", 
"GOOD LUCK!"]

pageNumber = array_length(pageTexts)
pageIndex = 0

x = room_width/2
y -= 3*(global.fontHeight+3)

leftArrow = instance_create_layer(x-65, y-10, "Instances", Obj_TutorialArrow)
with leftArrow {nextPage = -1; image_xscale *= -1}
rightArrow = instance_create_layer(x+65, y-10, "Instances", Obj_TutorialArrow)
//with rightArrow {nextPage = -1; image_xscale *= -1}
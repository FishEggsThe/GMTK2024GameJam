var pageNum = string(pageIndex+1) + "/" + string(pageNumber)
DrawGregText(pageNum, x, y, 3, fa_center, fa_middle)
DrawGregText(pageTexts[pageIndex], 275, 5, 3, fa_left, fa_top)
DrawGregText("Press 'Space' to exit", x, y+3*(global.fontHeight+3), 2, fa_center, fa_middle)
draw_sprite_ext(Spr_Tutorials, pageIndex, x+5, y+5-room_height/4, 2, 2, 0, c_black, 1)
draw_sprite_ext(Spr_Tutorials, pageIndex, x, y-room_height/4, 2, 2, 0, c_white, 1)
//global.fontHeight+3
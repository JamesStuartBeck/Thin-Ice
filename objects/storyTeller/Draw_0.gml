draw_self();
draw_set_font(startMenu);
if (roomId == 0) {
	str = "You were kidnapped by a maze loving phsyco and you were held captive in his secret cabin on mount Everest. "
	str += "Somehow you manage to escape. You get out of the cabin only to find out that this phsycopath has created "
	str += "mazes to keep people from entering or leaving his prison. On your was out make sure to crack all the ice "
	str += "before moving on so that he can't follow you! Good luck!"

	draw_text_ext(x,y,str,45,700);
} else {
	//draw_text_ext(x,y,"Carl Bou Khalil",45,700);
	//draw_text_ext(x,y,"James Beck",45,700);
	//draw_text_ext(x,y,"Jeremy Rivera",45,700);
	//draw_text_ext(x,y,"Jia Wu",45,700);
	draw_text(349,319,"Carl Bou Khalil\nJames Beck\nJeremy Rivera\nJia Wu");
}
//draw_text(x,y,str);
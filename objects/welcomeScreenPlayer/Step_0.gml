if (!global.paused) {
	if (keyboard_check_pressed(vk_up))
		y -= 64;
	else if (keyboard_check_pressed(vk_down))
		y += 64;
}
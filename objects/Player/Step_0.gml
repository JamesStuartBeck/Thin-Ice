// Handles player input

player_x = x;
player_y = y;

if(moveDown && keyboard_check_pressed(vk_up)){if(!place_meeting(x,y-64,IceWall) && !place_meeting(x,y-64,closedExit)){
	y-=64
	image_angle=0
	}}
else if(moveUp && keyboard_check_pressed(vk_down)){if(!place_meeting(x,y+64,IceWall) && !place_meeting(x,y+64,closedExit)){
	y+=64
	image_angle=180
	}}
else if(keyboard_check_pressed(vk_left)){if(!place_meeting(x-64,y,IceWall) && !place_meeting(x-64,y,closedExit)){
	x-=64
	image_angle=90
	}}
else if(moveRight && keyboard_check_pressed(vk_right)){if(!place_meeting(x+64,y,IceWall) && !place_meeting(x+64,y,closedExit)){
	x+=64
	image_angle=270
	}}
// Moves the player

if (room == Level2) {
	if(place_meeting(x,y,Exit)) {
		room_goto_next()
	} else if (player_x == Exit.x-64 && player_y == Exit.y) {
		moveRight = false;
	} else {
		moveRight = true;
	}
} else if (room == Level1 || room == Level3) {
	if(place_meeting(x,y,Exit)) {
		room_goto_next();
	} else if (player_x == Exit.x-64 && player_y == Exit.y) {
		moveRight = false;
		moveUp = true;
		moveDown = true;
	} else if (player_x == Exit.x && player_y == Exit.y-64) {
		moveUp = false;
		moveRight = true;
		moveDown = true;
	} else if (player_x == Exit.x && player_y == Exit.y+64) {
		moveDown = false;
		moveUp = true;
		moveRight = true;
	} else {
		moveUp = true;
		moveDown = true;
		moveRight = true;
	}
} else if(place_meeting(x,y,Exit)) {
	room_goto_next()
}
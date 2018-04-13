// Handles player input

player_x = x;
player_y = y;

if(move[DOWN] && keyboard_check_pressed(vk_up)){if(!place_meeting(x,y-64,IceWall) && !place_meeting(x,y-64,closedExit)){
	y-=64
	image_angle=0
	}}
else if(move[UP] && keyboard_check_pressed(vk_down)){if(!place_meeting(x,y+64,IceWall) && !place_meeting(x,y+64,closedExit)){
	y+=64
	image_angle=180
	}}
else if(move[LEFT] && keyboard_check_pressed(vk_left)){if(!place_meeting(x-64,y,IceWall) && !place_meeting(x-64,y,closedExit)){
	x-=64
	image_angle=90
	}}
else if(move[RIGHT] && keyboard_check_pressed(vk_right)){if(!place_meeting(x+64,y,IceWall) && !place_meeting(x+64,y,closedExit)){
	x+=64
	image_angle=270
	}}
// Moves the player

if (room == Level2) {
	if(place_meeting(x,y,Exit)) {
		room_goto_next()
	} else if (player_x == Exit.x-64 && player_y == Exit.y) {
		move[RIGHT] = false;
	} else {
		move[RIGHT] = true;
	}
} else if (room == Level1 || room == Level3) {
	if(place_meeting(x,y,Exit)) {
		room_goto_next();
	} else {
		//script_execute(enter_exit,moveUp, moveDown, moveLeft, moveRight, "Right");
		enter_exit(move, RIGHT, player_x, player_y);
	}
} else if(place_meeting(x,y,Exit)) {
	room_goto_next()
}
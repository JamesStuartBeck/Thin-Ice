// Handles player input



if(move[UP] && keyboard_check_pressed(vk_up)){if(!place_meeting(x,y-64,IceWall) && !place_meeting(x,y-64,closedExit)){
	y-=64
	image_angle=0
	}}
else if(move[DOWN] && keyboard_check_pressed(vk_down)){if(!place_meeting(x,y+64,IceWall) && !place_meeting(x,y+64,closedExit)){
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
player_x = x;
player_y = y;

if (room == Level3) {
	enter_exit(move, UP, player_x, player_y);
} else if (room == Level1 || room == Level2 || room == Level4) {
	enter_exit(move, RIGHT, player_x, player_y);
} else if (room == Level5) {
	enter_exit(move, LEFT, player_x, player_y);
}

if(place_meeting(x,y,Exit)) {
	room_goto_next()
}
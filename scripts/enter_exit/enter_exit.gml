///enter_exit(move, direction)

UP = 0;
DOWM = 1;
LEFT = 2;
RIGHT = 3;

move = argument[0];
directionn = argument[1];
player_x = argument[2];
player_y = argument[3];

switch (directionn) {
	case "UP":
		if (player_x == Exit.x+64 && player_y == Exit.y) {
			move[LEFT] = false;
			move[UP] = true;
			move[RIGHT] = true;
		} else if (player_x == Exit.x-64 && player_y == Exit.y) {
			move[RIGHT] = false;
			move[UP] = true;
			move[LEFT] = true;
		} else if (player_x == Exit.x && player_y == Exit.y+64) {
			move[UP] = false;
			move[LEFT] = true;
			move[RIGHT] = true;
		} else if (player_x == Exit.x && player_y == Exit.y-64 && global.steps < global.tiles) {
			move[DOWN] = false;
			move[UP] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		} else {
			move[UP] = true;
			move[DOWN] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		}
		
		break;
		
	case "DOWN":
		if (player_x == Exit.x+64 && player_y == Exit.y) {
			move[LEFT] = false;
			move[DOWN] = true;
			move[RIGHT] = true;
		} else if (player_x == Exit.x-64 && player_y == Exit.y) {
			move[RIGHT] = false;
			move[DOWN] = true;
			move[LEFT] = true;
		} else if (player_x == Exit.x && player_y == Exit.y-64) {
			move[DOWN] = false;
			move[LEFT] = true;
			move[RIGHT] = true;
		} else if (player_x == Exit.x && player_y == Exit.y+64 && global.steps < global.tiles) {
			move[UP] = false;
			move[DOWN] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		} else {
			move[UP] = true;
			move[DOWN] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		}
		
		break;
		
	case "LEFT":
		if (player_x == Exit.x+64 && player_y == Exit.y) {
			move[LEFT] = false;
			move[UP] = true;
			move[DOWN] = true;
		} else if (player_x == Exit.x && player_y == Exit.y+64) {
			move[UP] = false;
			move[LEFT] = true;
			move[DOWN] = true;
		} else if (player_x == Exit.x && player_y == Exit.y-64) {
			move[DOWN] = false;
			move[UP] = true;
			move[LEFT] = true;
		} else if (player_x == Exit.x-64 && player_y == Exit.y && global.steps < global.tiles) {
			move[RIGHT] = false;
			move[UP] = true;
			move[DOWN] = true;
			move[LEFT] = true;
		} else {
			move[UP] = true;
			move[DOWN] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		}
		
		break;
		
	case "RIGHT": 
		if (player_x == Exit.x-64 && player_y == Exit.y) {
			move[RIGHT] = false;
			move[UP] = true;
			move[DOWN] = true;
		} else if (player_x == Exit.x && player_y == Exit.y+64) {
			move[UP] = false;
			move[RIGHT] = true;
			move[DOWN] = true;
		} else if (player_x == Exit.x && player_y == Exit.y-64) {
			move[DOWN] = false;
			move[UP] = true;
			move[RIGHT] = true;
		} else if (player_x == Exit.x+64 && player_y == Exit.y && global.steps < global.tiles) {
			move[LEFT] = false;
			move[UP] = true;
			move[DOWN] = true;
			move[RIGHT] = true;
		} else {
			move[UP] = true;
			move[DOWN] = true;
			move[RIGHT] = true;
			move[LEFT] = true;
		}	
		
		break;
}
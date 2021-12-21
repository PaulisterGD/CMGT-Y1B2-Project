/// @description Insert description here
// You can write your code in this editor

//var playerDir = point_direction(x, y, obj_Player.x, obj_Player.y);
switch(currentState){
	case enemyStates.idle:
		if (stateTimer == 0) {currentState = enemyStates.pick;}
		break;
		
	case enemyStates.pick:
		currentState = choose(enemyStates.dodge, enemyStates.spray, enemyStates.honeycomb);
		stateTimer = timerData[currentState];
		bulletCount = 100;
		break;
	
	case enemyStates.spray:
		bulletCount--;
		createBullet(x, y, irandom(360), 4);
		break;
		
	case enemyStates.honeycomb:
		//honeycombSpawn = irandom(2);
		if (stateTimer <= 0 && bulletCount > 0){
			stateTimer = timerData[currentState];
			bulletCount -= 2;
			createHoneycomb();
		}
		break;
		
	case enemyStates.dodge:
		if(stateTimer <= 0 && bulletCount > 0) {
			stateTimer = timerData[currentState];
			bulletCount -= 100;
			path_start(pat_BeeBossFigureEight, 8, path_action_stop, 0);
		}
		break;
}


if (stateTimer > 0){
	stateTimer--;
}

if (bulletCount == 0){
	bulletCount = -1;
	currentState = enemyStates.idle;
	stateTimer = timerData[currentState];
}


//direction = point_direction(x, y, dir, y);
	
/*if(place_meeting(x+speed,y,objWalls)){
	while(!place_meeting(x+sign(speed),y,objWalls)){
		x += sign(speed);
	}
	dir *= -1;
}

if (direction > 90 && direction < 270) {
	image_xscale = -1 * (abs(sprite_width) / sprite_get_width(sprBoss));
} else {
	image_xscale = 1 * (sprite_width / sprite_get_width(sprBoss));
}
*/
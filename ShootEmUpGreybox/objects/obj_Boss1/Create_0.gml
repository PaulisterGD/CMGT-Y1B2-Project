/// @description Insert description here
// You can write your code in this editor

enum enemyStates {
	idle,
	pick,
	spray,
	honeycomb,
	dodge
}

timerData[enemyStates.spray] = -1;
timerData[enemyStates.dodge] = 300;
timerData[enemyStates.honeycomb] = 10;
timerData[enemyStates.pick] = -1;
timerData[enemyStates.idle] = 120;

bulletCount = 1;
currentState = enemyStates.idle;
stateTimer = timerData[currentState];

cd = room_speed;
cdValue = cd;

dead = false;
hp = 500; //health
maxHp = hp; //max health is the current health, which is max

healthbar_width = 105;
healthbar_height = 7;
healthbar_x = (1366/2) - (healthbar_width/2);
healthbar_y = ystart - 30;


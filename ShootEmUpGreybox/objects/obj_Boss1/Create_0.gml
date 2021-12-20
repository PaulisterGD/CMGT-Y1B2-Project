/// @description Insert description here
// You can write your code in this editor

cd = room_speed;
cdValue = cd;

dead = false;
hp = 50; //health
maxHp = hp; //max health is the current health, which is max
state = irandom(2);

healthbar_width = 105;
healthbar_height = 7;
healthbar_x = (1366/2) - (healthbar_width/2);
healthbar_y = ystart - 30;

path_start(pat_BeeBossNeutralPath, 8, path_action_restart, 0);
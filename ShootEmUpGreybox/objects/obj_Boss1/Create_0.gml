/// @description Insert description here
// You can write your code in this editor

cd = room_speed;
cdValue = cd;

dead = false;
hp = 100; //boss health will be higher
maxHp = hp;
state = irandom(2);

//Nicolo
healthbar_width = 100;
healthbar_height = 12;
healthbar_x = (768/2) - (healthbar_width/2);
healthbar_y = ystart - 100;



path_start(pat_BeeBossNeutralPath, 8, path_action_restart, 0);
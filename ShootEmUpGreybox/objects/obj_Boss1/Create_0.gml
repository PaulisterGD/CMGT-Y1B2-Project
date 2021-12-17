/// @description Insert description here
// You can write your code in this editor

cd = room_speed;
cdValue = cd;

dead = false;
hp = 100;
maxHp = hp;
state = irandom(2);

path_start(pat_BeeBossNeutralPath, 8, path_action_restart, 0);
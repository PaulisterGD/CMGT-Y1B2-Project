/// @description Insert description here
// You can write your code in this editor

var enemies = instance_number(obj_Enemy);
var enemies2 = instance_number(obj_Enemy2);
var enemiesBoss = instance_number(obj_Boss1);
var allDead = true;

for (var i = 0; i < enemies; i++) {
	if (!instance_find(obj_Enemy, i).dead) allDead = false;
}

for (var j = 0; j < enemies2; j++) {
	if (!instance_find(obj_Enemy2, j).dead) allDead = false;
}

for (var k = 0; k < enemiesBoss; k++) {
	if (!instance_find(obj_Boss1, k).dead) allDead = false;
}

if (allDead) room_goto_next();
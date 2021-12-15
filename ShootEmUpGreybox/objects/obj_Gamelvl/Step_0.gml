/// @description Insert description here
// You can write your code in this editor

var enemies = instance_number(obj_Enemy);
var allDead = true;

for (var i = 0; i < enemies; i++) {
	if (!instance_find(obj_Enemy, i).dead) allDead = false;
}

if (allDead) room_goto_next();
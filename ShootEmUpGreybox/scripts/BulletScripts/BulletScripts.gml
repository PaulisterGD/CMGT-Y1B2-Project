// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BulletScripts(){

}

function createBullet(xx, yy, dir, spd){
	var bullet = instance_create_layer(xx, yy, "Instances", obj_EnemyBullet);
	with (bullet) {
		direction = dir;
		speed = spd;
	}
}

function createHoneycomb(dirPick){
	if (dirPick == 0) { instance_create_layer(-1, irandom(768), "Enemies", obj_Honeycomb); } 
	else if (dirPick == 1) { instance_create_layer(1367, irandom(768), "Enemies", obj_Honeycomb); } 
	else if (dirPick == 2) { instance_create_layer(irandom(1366), -1, "Enemies", obj_Honeycomb); } 
}
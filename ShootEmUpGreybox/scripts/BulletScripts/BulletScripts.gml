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

function createHoneycomb(){
	instance_create_layer(irandom(1366), -1, "Enemies", obj_Honeycomb);
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function BulletScripts(){

}

//BULLET CREATION FOR BOSS 1 SPRAY ATTACK - PAUL

function createBullet(xx, yy, dir, spd){
	var bullet = instance_create_layer(xx, yy, "Instances", obj_EnemyBullet);
	with (bullet) {
		direction = dir;
		speed = spd;
	}
}

//HONEYCOMB ATTACK GENERATOR FOR BOSS 1 - PAUL

function createHoneycomb(){
	instance_create_layer(irandom(1366), -1, "Enemies", obj_Honeycomb);
}


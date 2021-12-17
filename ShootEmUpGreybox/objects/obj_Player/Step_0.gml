/// @description Paul
// You can write your code in this editor

//Movement calculator
var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

hsp = xMove * spd;
vsp = yMove * spd;

// SPRITE CHANGING CODE
if (xMove > 0){ image_index = 2; } 
else if (xMove < 0){ image_index = 3; }
else if (yMove < 0 && xMove == 0) { image_index = 1; } 
else { image_index = 0; }

if(place_meeting(x+hsp,y,objWalls)){
	while(!place_meeting(x+sign(hsp),y,objWalls)){ x += sign(hsp); }
	hsp = 0;
}

if(place_meeting(x,y+vsp,objWalls)){
	while(!place_meeting(x,y+sign(vsp),objWalls)){ y += sign(vsp); }
	vsp = 0;
}

x += hsp;
y += vsp;

cd--;

if (cd <= 0 && keyboard_check(vk_space)) {
	cd = cdValue;
	audio_play_sound(sou_Bullet, 1, false);
	with (instance_create_layer(x, y - 24, "bullets", obj_Bullet)) {
		direction = 90;
		speed = 16;
	}
}
/// @description Insert description here
// You can write your code in this editor

var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

/* PROVISIONAL SPRITE CHANGING CODE (I SAW THIS IN THE TUTORIAL I WATCHED AND THOUGHT TO ADD IT FOR LATER)
if (xMove != 0 || yMove != 0){
	sprite_index = //[running sprite strip];
} else {
	sprite_index = spr_Player;
}
*/

//Code line that flips the character sprite,
//depending on whether the player moves left or right.
//Don't think it's necessary but I'm keeping it here anyway, in case we want to add it later.
//if (xMove != 0) image_xscale = xMove; 

x += xMove * spd;
y += yMove * spd;

cd--;

if (cd <= 0 && mouse_check_button(mb_left)) {
	cd = cdValue;
	audio_play_sound(sou_Bullet, 1, false);
	with (instance_create_layer(x,y, "bullets", obj_Bullet)) {
		direction = 90;
		speed = 8;
	}
}
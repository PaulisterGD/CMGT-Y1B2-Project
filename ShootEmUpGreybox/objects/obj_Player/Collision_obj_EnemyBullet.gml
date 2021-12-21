/// @description Paul
// You can write your code in this editor

audio_play_sound(sou_Death, 1, false);
instance_destroy();

if (global.life > 0){
	global.life -= 1;
	newPlayer = instance_create_layer(room_width/2, room_height - 100, "Instances", obj_Player);
	newPlayer.image_xscale = 1.5;
	newPlayer.image_yscale = 1.5;
} else { 
	global.score = 0;
	global.life = 3;
	room_goto(rmGameOver);
}
/// @description Paul
// You can write your code in this editor

if (!dead){
	audio_play_sound(sou_EnemyDeath, 1, false);
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
}
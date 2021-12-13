/// @description Insert description here
// You can write your code in this editor


hp -= 1;
audio_play_sound(sou_Impact, 1, false);
instance_destroy(other);

if (hp <= 0) {
	audio_play_sound(sou_EnemyDeath, 1, false);
	dead = true;
	instance_destroy(self);
}
/// @description Insert description here
// You can write your code in this editor

if (dead){
	sprite_index = spr_CPU;
	speed = 0;
} else {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = random_range(0.5, 2);
	if (direction > 90 && direction < 270) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}



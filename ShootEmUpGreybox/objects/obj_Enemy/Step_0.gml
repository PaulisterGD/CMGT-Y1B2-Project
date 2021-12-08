/// @description Insert description here
// You can write your code in this editor

if (dead){
	sprite_index = noone;
	speed = 0;
} else {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = random_range(0.5, 2);
	if (direction > 90 && direction < 270) {
		image_xscale = -1 * (abs(sprite_width) / sprite_get_width(spr_CPU));
	} else {
		image_xscale = 1 * (sprite_width / sprite_get_width(spr_CPU));
	}
}



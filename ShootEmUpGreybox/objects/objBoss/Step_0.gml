/// @description Insert description here
// You can write your code in this editor



//direction = point_direction(x, y, dir, y);
	
/*if(place_meeting(x+speed,y,objWalls)){
	while(!place_meeting(x+sign(speed),y,objWalls)){
		x += sign(speed);
	}
	dir *= -1;
}
*/	

if (direction > 90 && direction < 270) {
	image_xscale = -1 * (abs(sprite_width) / sprite_get_width(sprBoss));
} else {
	image_xscale = 1 * (sprite_width / sprite_get_width(sprBoss));
}

/// @description Insert description here
// You can write your code in this editor

cd--;

if (cd <= 0 && keyboard_check(vk_space)) {
	cd = cdValue;
	state = irandom(2);
	if (state == 0) { instance_create_layer(-1, irandom(768), "Enemies", obj_Honeycomb); } 
	else if (state == 1) { instance_create_layer(1367, irandom(768), "Enemies", obj_Honeycomb);	} 
	else if (state == 2) { instance_create_layer(irandom(1366), -1, "Enemies", obj_Honeycomb); } 
	else {}
}


//direction = point_direction(x, y, dir, y);
	
/*if(place_meeting(x+speed,y,objWalls)){
	while(!place_meeting(x+sign(speed),y,objWalls)){
		x += sign(speed);
	}
	dir *= -1;
}

if (direction > 90 && direction < 270) {
	image_xscale = -1 * (abs(sprite_width) / sprite_get_width(sprBoss));
} else {
	image_xscale = 1 * (sprite_width / sprite_get_width(sprBoss));
}
*/
/// @description Insert description here
// You can write your code in this editor

toggle = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0, gp_padu) or keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd);
accept = keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face1);

if toggle{
	switch(image_index){
		case 0: image_index++; break;
		case 1: image_index--; break;
	}
}

if image_index == 0 and accept {
	room_goto(rmLevel1);
}

if image_index == 1 and accept {
	game_end();
}
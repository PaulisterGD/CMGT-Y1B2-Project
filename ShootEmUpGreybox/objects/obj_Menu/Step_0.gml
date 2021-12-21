/// @description Nico
// You can write your code in this editor

var up, down, accept, back;

up	   = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0, gp_padu);
down   = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd);
accept = keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face1);
back   = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face2);

if up and image_index > 0 {
	image_index--;
}

if down and image_index < image_number-1 {
	image_index++;
}

if image_index == 0 and accept {
	room_goto(rmLevel1);
}

if image_index == 1 and accept {
	game_end();
}
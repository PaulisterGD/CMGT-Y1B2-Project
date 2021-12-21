/// @description Create menu
// You can write your code in this editor
width = 300;
height = 300;

op_border = 20;
op_space = 60;

pos = 0;

//pause menu
option[0, 0] = "Start Game"
option[0, 1] = "Settings"
option[0, 2] = "Close Game"

//settings menu
option[1, 0] = "Window Size"
option[1, 1] = "Brightness"
option[1, 2] = "Controls"
option[1, 3] = "Back"

op_length = array_length(option);
menu_level = 0;
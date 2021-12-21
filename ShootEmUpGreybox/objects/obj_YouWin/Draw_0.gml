/// @description Insert description here
// You can write your code in this editor

draw_set_font(fon_GameOver);
draw_set_color(c_black);
draw_text(room_width / 4, room_height / 3, "YOU WIN!");

draw_set_font(fon_Continue);
draw_text(room_width / 4, (room_height / 2) + 50, "Final score: " + string(global.score));

draw_set_font(fon_text);
draw_text(room_width / 3, (room_height / 2) + 150, "Clear Bonus: 10000");
draw_text(room_width / 3, (room_height / 2) + 175, "Lives Bonus: " + string(2000 * global.life));
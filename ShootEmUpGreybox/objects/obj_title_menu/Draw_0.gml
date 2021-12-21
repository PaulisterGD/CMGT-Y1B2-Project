/// @description Draw the menu background 
// You can write your code in this editor
var _new_w = 0;
for (var i = 0; i < op_length; i++)
	{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
	}
width = _new_w + op_border*2;
height = op_border*2 + sprite_get_height(spr_main_font) + (op_length-1)*op_space;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw the options
draw_set_font(global.font_name);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++)
	{
		var _c = c_white;
		if pos == i {_c = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	}
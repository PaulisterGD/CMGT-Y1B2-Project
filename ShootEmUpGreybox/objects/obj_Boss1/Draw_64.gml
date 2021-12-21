/// @description Health Bar

draw_sprite(sprHealthbar_bg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(sprHealthbar,0,healthbar_x,healthbar_y,(hp/maxHp) * healthbar_width, healthbar_height);
draw_sprite(sprHealthbar_border,0,healthbar_x,healthbar_y);
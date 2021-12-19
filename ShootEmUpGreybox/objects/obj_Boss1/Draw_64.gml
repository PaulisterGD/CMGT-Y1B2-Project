/// Nicolo Health Bar

draw_sprite(spr_healthBar_bg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(hp/maxHp) * healthbar_width, healthbar_height);
draw_sprite(spr_healthBar_border,0,healthbar_x,healthbar_y);
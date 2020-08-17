draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);

draw_set_alpha(1);
draw_set_font(fnt_default);
var scale = sin((pi/40)*dist) + 1;
draw_text_outlined_transformed(x, y-1*dist, c_black, draw_get_color(), dmg, scale, scale,0);

if (!vitoria_ativa) exit;


draw_set_alpha(alpha_texto * 0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

draw_set_alpha(alpha_texto);
draw_set_color(c_white);
draw_set_font(fnt_titulo); // Use sua fonte grande
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var centro_x = gui_w / 2;
var centro_y = gui_h / 2;

// Linha 1
draw_text(centro_x, centro_y - 60, "PARABÉNS!");

// Linha 2
draw_set_font(fnt_menu); // Fonte menor
draw_text(centro_x, centro_y + 20, "Você venceu o boss!");

// Linha 3
draw_set_font(fnt_menu);
draw_set_color(c_yellow);
draw_text(centro_x, centro_y + 80, "Obrigado por jogar!");
draw_text(centro_x, centro_y + 120, "Desenvolvido pela Genesis Studios");

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);

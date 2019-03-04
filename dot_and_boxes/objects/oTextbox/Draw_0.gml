draw_self();
if (winner == 0){
	draw_set_color(c_blue);
	txt = "BlUE WINS!";
}
else if (winner == 1){
	draw_set_color(c_red);
	txt = "RED WINS!";
}
else if (winner == 2){
	draw_set_color(c_white);
	txt = "DRAW!";
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(x,y-25,txt,1.3,1.3,image_angle);

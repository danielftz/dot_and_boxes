var sc_box_idx = argument0;
var sc_line_idx = sc_box_idx.line_left;
if !(sc_line_idx.set){
	return false;
}
sc_line_idx = sc_box_idx.line_right;
if !(sc_line_idx.set){
	return false;
}
sc_line_idx = sc_box_idx.line_up;
if !(sc_line_idx.set){
	return false;
}
sc_line_idx = sc_box_idx.line_down;
if !(sc_line_idx.set){
	return false;
}
return true;
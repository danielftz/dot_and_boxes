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
var box_index = ds_list_find_index(global.uncapturedBox,sc_box_idx)
ds_list_delete(global.uncapturedBox,box_index)
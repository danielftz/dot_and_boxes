var item = argument0;
var filledLines = 0;
for (i=0; i < ds_list_size(item.affiliated_box);i++){
	var itemBox = item.affiliated_box[? i];
	var leftLine = itemBox.line_left;
	var rightLine = itemBox.line_right;
	var upLine = itemBox.line_up;
	var downLine = itemBox.line_down;
	if (leftLine.set ==true){
		filledLines++;
	}
	if (rightLine.set ==true){
		filledLines++;
	}
	if (upLine.set ==true){
		filledLines++;
	}
	if (downLine.set ==true){
		filledLines++;
	}
	if(filledLines > 1){
		return true;
	}
	filledLines =0;
}
return false;

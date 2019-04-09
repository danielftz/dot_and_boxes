var i =0;
var box;
var filledLines = 0;
for (i=0; i < ds_list_size(global.uncapturedBox);i++){
	filledLines =0;
	box = ds_list_find_value(global.uncapturedBox,i)
	var leftLine = box.line_left;
	var rightLine = box.line_right;
	var upLine = box.line_up;
	var downLine = box.line_down;
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
	if(filledLines <2){
		return true;
	}
}
return false;
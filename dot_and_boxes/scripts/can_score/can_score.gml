var i =0;
for (i=0;i<ds_list_size(global.uncapturedBox);i++){
		var filledLines = 0;
		var box = ds_list_find_value(global.uncapturedBox,i)
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
		if(filledLines == 3){
			if (leftLine.set ==false){return leftLine}
			if (rightLine.set ==false){return rightLine}
			if (upLine.set ==false){return upLine}
			if (downLine.set ==false){return downLine}
		}
}
return false;
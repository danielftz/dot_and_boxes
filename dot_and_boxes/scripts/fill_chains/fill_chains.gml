var startingBox = argument0
var chain = argument1

var has_value = false;
for (var i = 0; i < ds_list_size(chain.boxesInChain);i++){
	if (ds_list_find_value(chain.boxesInChain,i) == startingBox){
		has_value = true;
		break;
	}
}
if (has_value) {return chain}
else{
	var leftLine = startingBox.line_left
	var rightLine =startingBox.line_right
	var upLine =startingBox.line_up
	var downLine = startingBox.line_down


	ds_list_add(chain.boxesInChain, startingBox)

	var neibor;
	if(leftLine.set == false){
		if (startingBox.box_y>=1){
			neibor = global.Box[# startingBox.box_x, (startingBox.box_y-1)]
			//s_list_add(chain.boxesInChain,neibor)
		}
	}
	if(upLine.set == false){
		if (startingBox.box_x >=1){
			neibor = global.Box[# (startingBox.box_x - 1), startingBox.box_y]
			//ds_list_add(chain.boxesInChain,neibor)
		}
	}
	if(rightLine.set == false){
		if (startingBox.box_y < (global.m -1)){
			neibor = global.Box[# startingBox.box_x, (startingBox.box_y+1)]
			//ds_list_add(chain.boxesInChain,neibor)
		}
	}
	if(downLine.set == false){
		if (startingBox.box_x < (global.n - 1)){
			neibor = global.Box[# (startingBox.box_x +1), startingBox.box_y]
			//ds_list_add(chain.boxesInChain,neibor)
		}
	}
	return fill_chains(neibor,chain)
}
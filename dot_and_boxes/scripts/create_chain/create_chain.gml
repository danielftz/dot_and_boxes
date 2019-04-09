var startingBox = argument0

var leftLine = startingBox.line_left
var rightLine =startingBox.line_right
var upLine =startingBox.line_up
var downLine = startingBox.line_down
var chain = instance_create_depth(0,0,0,oChains)

chain = fill_chains(startingBox,chain)
return chain

/*
var neibor;
if(leftLine.set == false){
	if (startingBox.box_y>=1){
		neibor = global.Box[# startingBox.box_x, (startingBox.box_y-1)]
		ds_list_add(chain.boxes,neibor)
	}
}
if(upLine.set == false){
	if (startingBox.box_x >=1){
		neibor = global.Box[# (startingBox.box_x - 1), startingBox.box_y]
		ds_list_add(chain.boxes,neibor)
	}
}
if(rightLine.set == false){
	if (startingBox.box_y < (global.m -1)){
		neibor = global.Box[# startingBox.box_x, (startingBox.box_y+1)]
		ds_list_add(chain.boxes,neibor)
	}
}
if(downLine.set == false){
	if (startingBox.box_x < (global.n - 1)){
		neibor = global.Box[# (startingBox.box_x +1), startingBox.box_y]
		ds_list_add(chain.boxes,neibor)
	}
}
*/
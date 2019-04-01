var hValidMoves = ds_list_create();
var vValidMoves = ds_list_create();
for (i = 0; i< ds_map_size(global.hLine); i++){
	var item = global.hLine[? i]
	if (item.set == false){
		ds_list_add(hValidMoves, item)
	}
}
for (i = 0; i< ds_map_size(global.vLine); i++){
	item = global.vLine[? i]
	if (item.set ==false){
		ds_list_add(vValidMoves, item)
	}
}
global.hValidMoves = hValidMoves
global.vValidMoves = vValidMoves	
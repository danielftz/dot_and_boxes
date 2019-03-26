var validMoves = ds_list_create();
for (i = 0; i< ds_list_size(global.hLine); i++){
	item = global.hLine[? i]
	if (!item.set){
		ds_list_add(validMoves, item)
	}
}
for (i = 0; i< ds_list_size(global.vLine); i++){
	item = global.vLine[? i]
	if (!item.set){
		ds_list_add(validMoves, item)
	}
}
return validMoves
//var validMoves = check_valid_moves();
var validLine;
//check_valid_moves();
//var i;
//for (i=0; i< ds_map_size(global.empty_hLine); i++){
	
//	validLine = ds_map_find_value(global.empty_hLine,i);
//	if (!check_if_fill_third_line(validLine)){
//		return validLine;
//	}
//}
//for (i=0; i< ds_list_size(global.empty_vLine); i++){
//	validLine = ds_map_find_value(global.empty_vLine,i);
//	if (!check_if_fill_third_line(validLine)){
//		return validLine;
//	}
//}

while (true){
	var vh = irandom(1);
	var search;
	if (vh == 0 and ds_map_size(global.empty_hLine)>=1){
		var rand = irandom(ds_map_size(global.empty_hLine));
		validLine = ds_map_find_first(global.empty_hLine);
		//issues here
		repeat(rand){
		    validLine = ds_map_find_next(global.empty_hLine,validLine);
		}
		validLine = ds_map_find_value(global.empty_hLine,validLine);
		if (!check_if_fill_third_line(validLine)) return validLine;
	}
	else if (vh == 1 and ds_map_size(global.empty_vLine)>=1){
		var rand = irandom(ds_map_size(global.empty_vLine));
		validLine = ds_map_find_first(global.empty_vLine);
		repeat(rand){
		    validLine = ds_map_find_next(global.empty_vLine,validLine);
		}
		validLine = ds_map_find_value(global.empty_vLine,validLine);
		if (!check_if_fill_third_line(validLine)) return validLine;
	}
}
return get_random_line();
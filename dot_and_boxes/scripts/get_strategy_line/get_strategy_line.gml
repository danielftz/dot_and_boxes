//var validMoves = check_valid_moves();
var validLine;
check_valid_moves();

for (i=0; i< ds_list_size(global.hValidMoves); i++){
	validLine = ds_list_find_value(global.hValidMoves,i);
	if (!check_if_fill_third_line(validLine)){
		return validLine;
	}
}
for (i=0; i< ds_list_size(global.vValidMoves); i++){
	validLine = ds_list_find_value(global.vValidMoves,i);
	if (!check_if_fill_third_line(validLine)){
		return validLine;
	}
}


return get_random_line();
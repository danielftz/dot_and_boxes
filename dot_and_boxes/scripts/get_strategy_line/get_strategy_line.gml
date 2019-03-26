global.validMoves = check_valid_moves();
var validLine;
for (i=0; i< ds_list_size(global.validMoves); i++){
	validLine = ds_list_find_value(global.validMoves, i);
	if (!check_if_fill_third_line(validLine)){
		return validLine;
	}
}
return get_random_line();
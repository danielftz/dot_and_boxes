do{
	var i;
	var bot_line = get_random_line();
	
	bot_line.image_alpha = 1;
	if (global.current_player == 0){
		bot_line.sprite_index = sLineB;
	}
	else{
		bot_line.sprite_index = sLineR;
	}
	bot_line.set = true;
	var bot_player_scored = false;
	for (i=0;i<ds_list_size(bot_line.affiliated_box);i++){
		var connected_box = bot_line.affiliated_box[| i];
		if (check_box(connected_box)){
			with(connected_box) event_user(0);
			score_box();
			bot_player_scored = true;
		}
	}
	if !bot_player_scored{
		global.current_player = abs(1-global.current_player);
	}
	if (global.red_score+global.blue_score == global.m*global.n) break;
} until(bot_player_scored == false );
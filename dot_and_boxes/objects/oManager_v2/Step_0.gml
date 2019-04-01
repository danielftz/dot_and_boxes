if (global.played){
	//if a line is played
	var player_scored = false;
	var played_line = global.line_played;
	if (played_line.horizontal == true){
		ds_map_delete(global.empty_hLine,played_line.idx);
	}
	else{
		ds_map_delete(global.empty_vLine,played_line.idx);
	}
	
	for (i=0;i<ds_list_size(played_line.affiliated_box);i++){
		var connected_box = played_line.affiliated_box[| i];
		if (check_box(connected_box)){
			with(connected_box) event_user(0);
			score_box();
			player_scored = true
		}
	}
	if !player_scored{
		global.current_player = abs(1-global.current_player);
	}
	//player_scored = false;
	global.played = false;
	
	//random_play();
	if !(player_scored){
		bot_play();
	}
}



//if (global.played){
//	//when a line is played:
//	//check if line is horizontal or vertical
//	overall_hit = false
//	if (global.line_played[0]){//horizontal line played
//		//check if horizontal line is a border line
		
//		if (global.line_played[1]<size){//top border
//			box_hit = global.line_played[1];
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//		else if (global.line_played[1]>(size-1)*(size-1)){//bottom border
//			box_hit = global.line_played[1]-(size-1);
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//		else{//not a border
//			box_hit = global.line_played[1];//box below it
//			if (check_hit(box_hit,size)) overall_hit = true;
//			box_hit = global.line_played[1]-(size-1);//box above it
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//	}
//	else if !(global.line_played[0]){
//		//check if vertical line is a border line
//		if ((global.line_played[1] mod size) == 1){//box to the right
//			box_hit = global.line_played[1]-(global.line_played[1] div size);
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//		else if ((global.line_played[1] mod size) == 0){//box to the left
//			box_hit = global.line_played[1]-(global.line_played[1] div size);
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//		else{//box to left and right
//			//box to the right
//			box_hit = global.line_played[1]-(global.line_played[1] div size);
//			if (check_hit(box_hit,size)) overall_hit = true;
//			//box to the left
//			box_hit = box_hit-1;
//			if (check_hit(box_hit,size)) overall_hit = true;
//		}
//	}
//	if (!overall_hit){
//		global.current_player = abs(1-global.current_player);
//	}
//	//reset flag
//	global.played = false;
//}

//if ((red_score+blue_score)>=(size-1)*(size-1)){
//	if (blue_score>red_score) with(instance_create_depth(room_width/2,room_height/2,2,oTextbox)) winner = 0;
//	else if (blue_score<red_score) with(instance_create_depth(room_width/2,room_height/2,2,oTextbox)) winner = 1;
//	else with(instance_create_depth(room_width/2,room_height/2,2,oTextbox)) winner = 2;
	
//}
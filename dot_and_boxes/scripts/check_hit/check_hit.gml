box_idx = argument0;
size = argument1;

hit = true;
//horizontal line hit index = box_idx, box_idx+(size-1)

line_ID = global.hLine[? box_idx];//line above box
if (!line_ID.set){//if the line is not set
	hit = false;
}
line_ID = global.hLine[? box_idx+(size-1)];//line below box
if (!line_ID.set){//if the line is not set
	hit = false;
}

//vertical line hit index = size*((box_idx-1) div (size-1))+((box_idx-1) mod (size-1))+1
//size*((box_idx-1) div (size-1))+((box_idx-1) mod (size-1))+2
line_ID = global.vLine[? (size*((box_idx-1) div (size-1))+((box_idx-1) mod (size-1))+1)];//line to the left
if (!line_ID.set){//if the line is not set
	hit = false;
}
line_ID = global.vLine[? (size*((box_idx-1) div (size-1))+((box_idx-1) mod (size-1))+2)];//line to the right
if (!line_ID.set){//if the line is not set
	hit = false;
}

//check if a box has bee hit
if (hit){
	box_ID = global.Box[? box_idx];
	with (box_ID){
		event_user(0);
	}
	if (global.current_player == 0) blue_score++;
	else if (global.current_player == 1) red_score++;
	return true;
}
else {//switch player if didn't hit a box
	
	return false;
}
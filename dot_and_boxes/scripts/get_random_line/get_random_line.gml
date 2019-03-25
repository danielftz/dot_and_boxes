while(true){
	if irandom(2) == 1{
		var chosen_map = global.hLine;
		var chosenrandom = irandom(global.m*(global.n+1)-1);
	}
	else{
		chosen_map = global.vLine;
		chosenrandom = irandom((global.m+1)*global.n-1);
	}
	var chosen_idx = chosen_map[? chosenrandom];
	if (chosen_idx.set!=true) return chosen_idx
}
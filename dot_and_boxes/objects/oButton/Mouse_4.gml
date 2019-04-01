
if (txt == "3 x 3"){
	global.m = 3;
	global.n = 3;
	//room_goto(rThreeXThree);
	room_goto(rGameMxN);
}
else if (txt == "5 x 5"){
	global.m = 5;
	global.n = 5;
	//room_goto(rFiveXFive);
	room_goto(rGameMxN);
}
else if (txt == "7 x 7"){
	global.m = 7;
	global.n = 7;
	//room_goto(rSevenXSeven);
	room_goto(rGameMxN);
}
else if (txt == "back"){
	room_goto(rMenu);
}
else if (txt == "restart"){
	room_restart();
}
else if (txt == "start"){
	room_goto(rGameMxN);
}
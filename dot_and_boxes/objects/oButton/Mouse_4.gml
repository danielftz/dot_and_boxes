
if (txt == "4 x 4"){
	room_goto(rFourXFour);
}
else if (txt == "8 x 8"){
	room_goto(rEightXEight);
}
else if (txt == "back"){
	room_goto(rMenu);
}
else if (txt == "restart"){
	room_restart();
}
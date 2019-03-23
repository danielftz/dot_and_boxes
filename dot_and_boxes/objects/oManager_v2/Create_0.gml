//size = ? set in child object
global_val();

blue_score = 0;
red_score = 0;
h_val = room_width div (global.m+2); 
h_gap = h_val-15-6; //horizontal gap between dots
v_val = room_height div (global.n+2);
v_gap = v_val-15-6 //vertical gap between dots

//create dots
for (i=0;i<global.n+1;i++){
	y_coord = (i+1)*v_val;
	for (j=0;j<global.m+1;j++){
		x_coord = (j+1)*h_val;
		instance_create_depth(x_coord,y_coord,5,oDot);
	}
}
//create horizontal lines
for (i=0;i<global.n+1;i++){
	y_coord = (i+1)*v_val;
	for (j=0;j<global.m;j++){
		x_coord = (j+1)*h_val;
		with (instance_create_depth(x_coord+18,y_coord+1,5,oLine)){
			global.hLine[? global.hIdx] = id;//add line to dictionary
			idx = global.hIdx;//set up the index starts at 0
			global.hIdx++;//update index
			image_xscale = oManager_v2.h_gap/40;//resize
			
		}
	}
}

//create vertical lines
for (i=0;i<global.n;i++){
	y_coord = (i+1)*v_val;
	for (j=0;j<global.m+1;j++){
		x_coord = (j+1)*h_val;
		with (instance_create_depth(x_coord+13,y_coord+18,5,oLine)){
			global.vLine[? global.vIdx] = id;//add line to dictionary
			idx = global.vIdx;//set up the index starts at 0
			global.vIdx++;//update index
			horizontal = false;//set vertical
			image_xscale = oManager_v2.v_gap/40;//resize
			image_angle = 270;
		}
	}
}

//create boxes
//be careful with indexing
for (i=0;i<global.n;i++){
	y_coord = (i+1)*v_val;
	for (j=0;j<global.m;j++){
		x_coord = (j+1)*h_val;
		var box_idx = instance_create_depth(x_coord+18,y_coord+18,5,oBox)
		box_idx.box_x = i;//set boxx
		box_idx.box_y = j;//set boxy
		//resize
		box_idx.image_xscale = oManager_v2.h_gap/64;
		box_idx.image_yscale = oManager_v2.v_gap/64;
		//update grid
		global.Box[# i,j] = box_idx;
		//******please fill in here*******//
		//match vLine and hLine to each oBox
		//update them in oLine and oBox 
		//update oLine.affiliated_box(a list)
		//update oBox.line_left,oBoxl.line_right,etc. 
		
	}
}


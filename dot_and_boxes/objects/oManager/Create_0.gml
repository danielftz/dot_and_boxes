//size = ? set in child object
global_val();

blue_score = 0;
red_score = 0;
h_val = room_width div (size+1); 
h_gap = h_val-15-6; //horizontal gap between dots
v_val = room_height div (size+1);
v_gap = v_val-15-6 //vorizontal gap between dots

for (i=1;i<size+1;i++){
	y_coord = i*v_val;
	for (j=1;j<size+1;j++){
		x_coord = j*h_val;
		instance_create_depth(x_coord,y_coord,5,oDot);
		if (j<size){//create horizontal lines
			with(instance_create_depth(x_coord+18,y_coord+1,5,oLine)){
				//add to map
				global.hIdx++;
				global.hLine[? global.hIdx] = id;
				
				//set idx
				idx = global.hIdx;
				//resize
				image_xscale = oManager.h_gap/40;
			}
		}
		if (i<size){//create vertical lines
			with(instance_create_depth(x_coord+13,y_coord+18,5,oLine)){
				//add to map
				global.vIdx++;
				global.vLine[? global.vIdx] = id;
				
				//set idx
				horizontal = false;
				idx = global.vIdx;
				//resize
				image_angle = 270;
				image_xscale = oManager.v_gap/40;
			}
		}
		if (i<size && j<size){//create boxes
			with (instance_create_depth(x_coord+18,y_coord+18,5,oBox)){
				//add to map
				global.bIdx++;
				global.Box[? global.bIdx] = id;
				
				//set idx
				idx = global.bIdx;
				//resize
				image_xscale = oManager.h_gap/64;
				image_yscale = oManager.v_gap/64;
			}
		}
			
	}
}
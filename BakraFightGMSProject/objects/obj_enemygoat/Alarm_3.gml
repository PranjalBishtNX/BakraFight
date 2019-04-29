//after hurt

if (place_meeting(x,y+1,obj_ground))
	state = "normal";
else
	state="jump";



if(hp<=0){
	state = "dead"
}

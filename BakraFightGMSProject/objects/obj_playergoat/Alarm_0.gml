if (place_meeting(x,y+1,obj_ground))
	state = "normal";
else
	state="jump";


alarm_set(1,atkCool);
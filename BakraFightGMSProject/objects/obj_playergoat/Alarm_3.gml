///// @description after Hurt state is done

if (place_meeting(x,y+1,obj_ground))
	state = "normal";
else
	state="jump";

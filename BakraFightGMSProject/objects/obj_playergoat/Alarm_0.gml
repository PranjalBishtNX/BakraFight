///@description After attack ends
if (place_meeting(x,y+1,obj_ground))
{
	state = "normal";
	alarm_set(1,atkCool);
}
else
{
	//state="jump";
	state = "attack";
	alarm_set(0, 2);
}

if(obj_UIController.Health1>10  && global.mode == "preCombat")
{
	obj_UIController.Health1-= 10;
	obj_UIController.p1Stats[pos]++
	obj_playergoat.hp = obj_UIController.Health1
	
	fb = instance_position(tX, y, obj_SelectFeedback)  //check if there's already a feedback object and destroy it
	if(fb != noone) instance_destroy(fb)
	
	//feedback fx
	instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback)	
	//fb = instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback2)
	//fb.iconType = pos;
	
	t = instance_create_layer(tX, y, "UI_Feedback", obj_TextFeedback);
	t.textToDraw = "Life -10!";
	t.col = make_color_rgb(235,69,47);
}



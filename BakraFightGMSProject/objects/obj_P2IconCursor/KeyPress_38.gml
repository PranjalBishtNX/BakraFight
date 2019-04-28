if(obj_UIController.Health2>10  && global.mode == "preCombat")
{
	obj_UIController.Health2-= 10;
	obj_UIController.p2Stats[pos]++
	obj_enemygoat.hp = obj_UIController.Health2
	
	fb = instance_position(tX, y, obj_SelectFeedback)  //check if there's already a feedback object and destroy it
	if(fb != noone) instance_destroy(fb)
	
	instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback)	
	fb = instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback2)
	fb.iconType = pos;
	
}


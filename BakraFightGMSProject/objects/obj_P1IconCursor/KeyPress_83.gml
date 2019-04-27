if(obj_UIController.p1Stats[pos]>0){
	obj_UIController.p1Stats[pos]--
	obj_UIController.Health1+=10
	
	fb = instance_position(tX, y, obj_SelectFeedback)  //check if there's already a feedback object and destroy it
	if(fb != noone) instance_destroy(fb)
	
	instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback)
	
}


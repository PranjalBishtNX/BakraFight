if(obj_UIController.p2Stats[pos]>0){
	obj_UIController.p2Stats[pos]--
	obj_UIController.Health2+=10
	
	fb = instance_position(tX, y, obj_SelectFeedback)  //check if there's already a feedback object and destroy it
	if(fb != noone) instance_destroy(fb)
	
	instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback)
	
}
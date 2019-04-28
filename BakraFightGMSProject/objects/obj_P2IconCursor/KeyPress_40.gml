if(obj_UIController.p2Stats[pos]>0  && global.mode == "preCombat"){
	obj_UIController.p2Stats[pos]--
	obj_UIController.Health2+=10
	obj_enemygoat.hp = obj_UIController.Health2
	
	fb = instance_position(tX, y, obj_SelectFeedback)  //check if there's already a feedback object and destroy it
	if(fb != noone) instance_destroy(fb)
	
	instance_create_layer(tX, y, "UI_Feedback", obj_SelectFeedback)
	
}
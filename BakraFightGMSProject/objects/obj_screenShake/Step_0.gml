/// @description Shake
rX = random_range(-shake_amount, shake_amount);
rY = random_range(-shake_amount, shake_amount);

camera_set_view_pos(view_camera[0], view_x + rX, view_y + rY*y_multiplier);

if(global.mode!= "combat" && global.mode!="postCombat")
{
	camera_set_view_pos(view_camera[0], view_x, view_y); 
	instance_destroy();
}
image_index = iconType;
image_alpha = image_alpha-0.05;
y-=8;
if(image_alpha<=0){
	instance_destroy();	
}
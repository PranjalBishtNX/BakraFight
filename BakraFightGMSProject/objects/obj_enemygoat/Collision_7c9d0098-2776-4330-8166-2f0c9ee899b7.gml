   if(x<32) x = 32;
		if(x>room_width-32) x = room_width-32;
		
		if(x<room_width/2)
			x = x+bashSpeed;
		else
			x = x-bashSpeed;
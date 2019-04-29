if(global.mode == "gameStart")
{
	//menu stuff
}

else
{
	//draw player1 hp bar
	draw_sprite(UI_HPBarBack, 0, 0, 16);
	draw_sprite_ext(UI_HPBarExtend, 0, 60, 16, Health1/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
	draw_sprite(UI_HPBarTop, 0, 0, 16);

	//draw player2 hp bar
	draw_sprite_ext(UI_HPBarBack, 0, room_width,16, -1, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
	draw_sprite_ext(UI_HPBarExtend, 0, room_width-60, 16, -Health2/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
	draw_sprite_ext(UI_HPBarTop, 0, room_width, 16, -1, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);


	dCount = 0  //drawCount for sequential draws of top icons
	for(i = 0; i < 3; i += 1) {
		for(j = 0; j < p1Stats[i]; j += 1) {
			draw_sprite_ext(UI_Icons, i, obj_P1StatsUI.x + dist*dCount, obj_P1StatsUI.y, 0.5, 0.5, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
			dCount++
		}
	}
	//now for p2
	dCount = 0  
	for(i = 2; i >=0; i -= 1) {
		for(j = 0; j < p2Stats[i]; j += 1) {
			draw_sprite_ext(UI_Icons, i, obj_P2StatsUI.x - dist*dCount, obj_P1StatsUI.y, 0.5, 0.5, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
			dCount++
		}
	}
}
if(global.mode == "preCombat")
{
	draw_set_font(AGothicBig)
	
	if(timeLeft>0)
		draw_text(room_width*0.5, y + 128, string(timeLeft));
	else
		draw_text(room_width*0.5, y + 128, string("FIGHT!"));

} else if(global.mode == "postCombat"){
	draw_set_font(AGothicBig)
	if(Health1<=0)
		draw_text(room_width*0.5, y + 512, "GOAT 2 WINS!");
	else if(Health2<=0)
		draw_text(room_width*0.5, y + 512, "GOAT 1 WINS!");
	else
		draw_text(room_width*0.5, y + 512, "DOUBLE KO!!");
		
	draw_set_font(AGothic12)
	draw_text(room_width*0.5-140, y + 750, "P1 Goat: " + string(wins1));
	draw_text(room_width*0.5+140, y + 750, "P2 Goat: " + string(wins2));
}

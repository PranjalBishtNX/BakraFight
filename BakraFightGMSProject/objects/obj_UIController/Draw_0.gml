draw_sprite(UI_HPBarHolder, 0, 32, 32);

draw_sprite_ext(UI_HPBarHolder, 0, room_width-32, 32, -1, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

draw_sprite_ext(UI_HPBarExtend, 0, 64, 32, 6*Health1/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

draw_sprite_ext(UI_HPBarExtend, 0, room_width-64, 32, -6*Health2/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

//p1count = p1Stats[0] +  p1Stats[1] + p1Stats[2]
//p2count = p2Stats[0] +  p2Stats[1] + p2Stats[2]

dCount = 0  //drawCount for sequential draws
for(i = 0; i < 3; i += 1) {
	for(j = 0; j < p1Stats[i]; j += 1) {
		draw_sprite_ext(UI_Icons, i, obj_P1StatsUI.x + dist*dCount, obj_P1StatsUI.y, 0.5, 0.5, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
		dCount++
	}
}
//now for p2
dCount = 0  //drawCount for sequential draws
for(i = 2; i >=0; i -= 1) {
	for(j = 0; j < p2Stats[i]; j += 1) {
		draw_sprite_ext(UI_Icons, i, obj_P2StatsUI.x - dist*dCount, obj_P1StatsUI.y, 0.5, 0.5, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
		dCount++
	}
}

if(global.mode=="preCombat")
{
draw_sprite(UI_Icons, 0, x + 0, y + 0);

draw_sprite(UI_Icons, 1, x + dist, y + 0);

draw_sprite(UI_Icons, 2, x + dist*2, y + 0);

draw_text(x + 0, y + 128, string("Attack") + "");

draw_text(x + dist, y + 128, string("Speed") + "");

draw_text(x + dist*2, y + 128, string("Jump") + "");
}
global.mode = "gameStart";

Health1 = 100;
Health2 = 100;
wins1 = 0;
wins2 = 0;

timeLeft = 6;  //put 1 more than the actual value here, it reduces by 1 right at the start
timerWaiting = false;
sec = 60;    //should be 60 ideally

//p1count = 0
//p2count = 0

p1Stats = [0,0,0]
p2Stats = [0,0,0]

dist = 64  //dist b/w top icons

freezeFrame = false;


instance_create_layer(room_width/2, 866, "UI_Feedback", obj_menuPrompt);
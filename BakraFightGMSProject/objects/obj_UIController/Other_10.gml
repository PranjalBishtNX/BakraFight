///@description Restart round

global.mode = "preCombat";
Health1 = 100;
Health2 = 100;


timeLeft = 6;  //put 1 more than the actual value here, it reduces by 1 right at the start
timerWaiting = false;
sec = 60;    //should be 60 ideally

p1Stats = [0,0,0]
p2Stats = [0,0,0]

dist = 64  //dist b/w top icons

freezeFrame = false;
postCombatWaitTime = 30;
reAllowTimer = 100;
restartAllowed = false;



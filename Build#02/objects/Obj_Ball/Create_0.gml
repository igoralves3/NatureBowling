/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

y = room_height /2;

x = 100;

adjustSpeed = 1;

starter_x= x;
starter_y = y;

rollSpeed = 10;
minSpeed = 5;

stateIdle = 1;
stateRolling = 2;
stateReturning=3;
center_x = 5;
center_y = 5;

waitFrames=0;

curState = stateIdle;
angle = 0;
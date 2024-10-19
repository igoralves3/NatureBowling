/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

y = room_height /2;

x = room_width - 200;


starter_x= x;
starter_y = y;

pino1 = instance_create_layer(x+90, y-45, "Instances", Obj_Pino);

pino2 = instance_create_layer(x+90, y, "Instances", Obj_Pino);
pino3 = instance_create_layer(x+90, y+45, "Instances", Obj_Pino);
pino4 = instance_create_layer(x, y-30, "Instances", Obj_Pino);
pino5 = instance_create_layer(x, y+30, "Instances", Obj_Pino);
pino6 = instance_create_layer(x-90, y, "Instances", Obj_Pino);

pino7 = instance_create_layer(x+180, y-80, "Instances", Obj_Pino);
pino8 = instance_create_layer(x+180, y-30, "Instances", Obj_Pino);
pino9 = instance_create_layer(x+180, y+30, "Instances", Obj_Pino);
pino10 = instance_create_layer(x+180, y+80, "Instances", Obj_Pino);


pinos = {pino1,pino2,pino3,pino4,pino5,pino6,pino7,pino8,pino9,pino10};
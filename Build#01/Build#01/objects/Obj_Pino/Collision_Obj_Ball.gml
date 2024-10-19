/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//score++;
Obj_PinSpawner.totalPinos--;
//colidido=true;

dirY = (y - Obj_Ball.y);
dirX = (x - Obj_Ball.x);

//alarm[0] = room_speed * 3;



//instance_create_layer(x, y, "Instances", Obj_TrashBlast);
instance_destroy(self);
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//x = starter_x;
//		y = starter_y;
//		curState=stateIdle;
		
		if(curState==stateRolling){
		if(ClassicGameManager.currentTry == 1){
			
			 
			
			if(instance_exists(Obj_Pino)){
				
				
				
				ClassicGameManager.currentTry += 1;
			}else{
				score += 20;
				ClassicGameManager.currentTry = 1;
				
				instance_destroy(Obj_PinSpawner);
				instance_create_layer(x,y,"Instances",Obj_PinSpawner);
			}
	
			
		}else if(ClassicGameManager.currentTry == 2){
			
			if(!instance_exists(Obj_Pino)){
				score += 10;
				
				
			}
			instance_destroy(Obj_PinSpawner);
			instance_create_layer(x,y,"Instances",Obj_PinSpawner);
		
			ClassicGameManager.currentTry = 1;
			ClassicGameManager.currentFrame +=1;
			if(ClassicGameManager.currentFrame > ClassicGameManager.frames){
				
				room_goto(GameOver);
			}
		
		}
		
		x = starter_x;
		y = starter_y;
		curState=stateIdle;
		}
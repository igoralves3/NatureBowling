/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(curState == stateIdle){

	if(keyboard_check(vk_up) && y > adjustSpeed){
		y -= adjustSpeed;
	}else if(keyboard_check(vk_down) && y < room_height - adjustSpeed){
		y += adjustSpeed;
	}
	if(keyboard_check(vk_space)){
		rollSpeed++;
		if(rollSpeed >= 20){
			rollSpeed=10;
		}
	}if(keyboard_check_released(vk_space)){
		curState = stateRolling;
	}
	
}else if(curState == stateRolling){
	
	if(x >= room_width - rollSpeed){
		x = starter_x;
		y = starter_y;
		curState=stateIdle;
		
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
		
	}
	
	x += rollSpeed;
	if(keyboard_check(vk_up) && y > adjustSpeed){
		y -= adjustSpeed;
	}else if(keyboard_check(vk_down) && y < room_height - adjustSpeed){
		y += adjustSpeed;
	}

	if(keyboard_check(vk_left) && rollSpeed > 9){
		rollSpeed--;
	}else if(keyboard_check(vk_right) && rollSpeed < 20){
		rollSpeed++;
	}}
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
			rollSpeed=1;
		}
	}if(keyboard_check_released(vk_space)){
		curState = stateRolling;
	}
	
}else if(curState == stateRolling){
	
	if(x >= room_width - rollSpeed){
		x = starter_x;
		y = starter_y;
		curState=stateIdle;
	}
	
	x += rollSpeed;
	if(keyboard_check(vk_up) && y > adjustSpeed){
		y -= adjustSpeed;
	}else if(keyboard_check(vk_down) && y < room_height - adjustSpeed){
		y += adjustSpeed;
	}
}
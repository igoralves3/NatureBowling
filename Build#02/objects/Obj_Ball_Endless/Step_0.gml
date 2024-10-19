/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Define a posição da câmera
camera_set_view_pos(view_camera[0], x - (view_wview[0] / 2),y - (view_hview[0] / 2));






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
	}
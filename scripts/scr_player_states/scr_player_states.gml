function player_state_free(){
	var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) 
	or keyboard_check_pressed(ord("W"));

	var move = key_right - key_left != 0;

	yspd+=grv;
	yspd = clamp(yspd,yspd_min,yspd_max);

	if(move){
		sprite_index = sPlayerRun;
		move_dir = point_direction(0,0,key_right - key_left,0);
		move_spd = approach(move_spd,move_spd_max,acc);	
	}else{
		sprite_index = sPlayerIdle;
		move_spd = approach(move_spd,0,dcc);	
	}

	can_move = approach(can_move,0,.5);
	if(can_move <= 0) xspd = lengthdir_x(move_spd,move_dir);

	if(xspd != 0){
		x_scale = sign(xspd);
	}

	var ground = place_meeting(x,y+1,oWall);
	var wall = place_meeting(x + 1,y,oWall) or place_meeting(x - 1,y,oWall);

	if(ground){
		coyote_time = coyote_time_max;	
	}else{
		coyote_time--;
		if(yspd < 0){
			sprite_index = sPlayerJump;	
		}else if(yspd > 0){
			sprite_index = sPlayerFall;
		}
	}

	if(key_jump and coyote_time > 0){
		
		 // Alterna entre dia e noite
		 if global.dia == true {
			global.dia = false;
		 }else{
			global.dia = true;
		 }
		
		coyote_time = 0;
		yspd = 0;
		yspd-=jump_height;
	}	
	
	if(wall and !ground){
		if(yspd > 1){
			sprite_index = sPlayerWall;
			yspd = 1;	
		}
		if(key_jump){
			
		// Alterna entre dia e noite
		 if global.dia == true {
			global.dia = false;
		 }else{
			global.dia = true;
		 }
		 
			
			coyote_time = 0;
			yspd = 0;
			yspd -= jump_height;
			can_move = 5;
			xspd -= 3 * x_scale;
		}
	}
	
}
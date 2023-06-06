#region colisão com a parede
repeat(abs(xspd)){
	
	if(place_meeting(x+sign(xspd),y,oWall)){
		if(!place_meeting(x+sign(xspd),y-1,oWall)){
			y--;	
		}
	}else{
		if(!place_meeting(x+sign(xspd),y+1,oWall)){
			if(place_meeting(x+sign(xspd),y+2,oWall)){
				y++;
			}
		}
	}
	
	if(place_meeting(x+sign(xspd),y,oWall)){
		xspd = 0;
		break;
	}else{
		x+=sign(xspd);	
	}
}
repeat(abs(yspd)){
	if(place_meeting(x,y+sign(yspd),oWall)){
		yspd = 0;
		break;
	}else{
		y+=sign(yspd);	
	}
}
#endregion

#region colisão com a morte
if global.morto == false{
repeat(abs(xspd)){
	
	if(place_meeting(x+sign(xspd),y,oDeathBlock)){
		if(!place_meeting(x+sign(xspd),y-1,oDeathBlock)){
			y--;
			global.morto = true;
		}
	}else{
		if(!place_meeting(x+sign(xspd),y+1,oDeathBlock)){
			if(place_meeting(x+sign(xspd),y+2,oDeathBlock)){
				y++;
				global.morto = true;
			}
		}
	}
	
	if(place_meeting(x+sign(xspd),y,oDeathBlock)){
		
		global.morto = true;
		break;
	}
}
repeat(abs(yspd)){
	if(place_meeting(x,y+sign(yspd),oDeathBlock)){
		
		global.morto = true;
		break;
	}
}
}
#endregion

#region colisão com o bloco tchola
if global.morto == false{
repeat(abs(xspd)){
	
	if(place_meeting(x+sign(xspd),y,oChaozin)){
		if(!place_meeting(x+sign(xspd),y-1,oChaozin) and global.dia == true){
			
			global.morto = true;
		}
	}else{
		if(!place_meeting(x+sign(xspd),y+1,oChaozin)){
			if(place_meeting(x+sign(xspd),y+2,oChaozin) and global.dia == true){
				
				global.morto = true;
			}
		}
	}
	
	if(place_meeting(x+sign(xspd),y,oChaozin) and global.dia == true){
		
		global.morto = true;
		break;
	}
}
repeat(abs(yspd)){
	if(place_meeting(x,y+sign(yspd) + 4,oChaozin) and global.dia == true){
		
		global.morto = true;
		break;
	}
}
}
#endregion

#region colisão com o bloco tchola noturno
if global.morto == false{
repeat(abs(xspd)){
	
	if(place_meeting(x+sign(xspd),y,oChaozinGreen)){
		if(!place_meeting(x+sign(xspd),y-1,oChaozinGreen) and global.dia == false){
			
			global.morto = true;
		}
	}else{
		if(!place_meeting(x+sign(xspd),y+1,oChaozinGreen)){
			if(place_meeting(x+sign(xspd),y+2,oChaozinGreen) and global.dia == false){
				
				global.morto = true;
			}
		}
	}
	
	if(place_meeting(x+sign(xspd),y,oChaozinGreen) and global.dia == false){
		
		global.morto = true;
		break;
	}
}
repeat(abs(yspd)){
	if(place_meeting(x,y+sign(yspd) + 4,oChaozinGreen) and global.dia == false){
		
		global.morto = true;
		break;
	}
}
}
#endregion

#region itens ae
if iten_count >= 3 {instance_create_depth(x,y,-9999,oInvocaTransicaoNextLevel);}
#endregion
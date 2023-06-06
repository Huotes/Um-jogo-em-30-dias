if instance_exists(oPlayer){
if bbox_bottom >= oPlayer.bbox_bottom{
	sprite_index = sJumpThroughBlock;
}else{
sprite_index = -1;	
}}
/*
with(oPlayer){
var down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
	
if down {other.sprite_index = -1;}
}

*/
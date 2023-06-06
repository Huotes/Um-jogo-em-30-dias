if global.morto == true{
	if !instance_exists(oTransicaoDeath){instance_create_depth(0,0,-9999,oTransicaoDeath)}
	if instance_exists(oTransicaoDeath){global.morto = false}
	}
//if instance_exists(obj_textbox){global.dialogo = true}
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if global.dia == true {
    var bg2 = spr_background_dia; // Substitua "spr_background_noite" pelo nome do sprite de background da noite
    layer_background_change(lay_id, bg2);
    layer_sprite_change(back_id, bg2);
} else {
    var bg1 = spr_background_noite; // Substitua "spr_background_dia" pelo nome do sprite de background do dia
    layer_background_change(lay_id, bg1);
    layer_sprite_change(back_id, bg1);
}
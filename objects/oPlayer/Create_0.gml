//Gravidade e movimentação
xspd = 0;
yspd = 0;
yspd_min = -5;
yspd_max = 5;
grv = 0.3;

//velocidades e desaceleração
can_move = 0;
move_dir = 0;
move_spd = 0;
move_spd_max = 1.2;
acc = 0.3;
dcc = 0.3;

//pulo
jump_height = 4;
coyote_time_max = 8;
coyote_time = 0;

//escala de imagem
x_scale = 1;
y_scale = 1;

//estado
state = player_state_free;

//profundidade
depth = -bbox_bottom;

//itens
iten_count = 0;

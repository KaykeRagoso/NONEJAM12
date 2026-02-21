// Velocidades
hsp = 0; // Velocidade Horizontal
vsp = 0; // Velocidade Vertical
grv = 0.4; // Gravidade
walksp = 4; // Velocidade de caminhada
jump_force = -9; // Força do pulo

// Dash
can_dash = true;
dashing = false;
dash_duration = 10; // Frames
dash_timer = 0;
dash_sp = 10;

// Wall Jump
wall_speed_limit = 2;
on_wall = 0; // 1 para direita, -1 para esquerda
control_lock = 0; // Timer para travar o input horizontal
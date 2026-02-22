// Movimento
hsp = 0;
vsp = 0;
grv = 0.4;
walksp = 3;
jump_force = -9;

// Direção
facing = 1;

// Dash
can_dash = true;
dash_duration = 10;
dash_timer = 0;
dash_sp = 10;

// Wall
wall_speed_limit = 3;
on_wall = 0;
control_lock = 0;

enum PlayerState {
    IDLE,
    RUN,
    AIR,
    DASH,
    DEATH,
    DAMAGE,
    ATTACK
}

state = PlayerState.IDLE;
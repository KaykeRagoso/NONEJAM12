// Countdown do spawn
if (spawn_timer > 0) {
    spawn_timer--;
    exit;
}

// Colisão com inimigo
if (place_meeting(x, y, obj_InimigoPai)) {
    var _hit = instance_place(x, y, obj_InimigoPai);
    if (_hit != noone) {
        with (_hit) { takeDamage(other.damage, other.direction); }
    }
    instance_destroy();
    exit;
}

// Colisão com bloco
if (place_meeting(x, y, obj_Block)) {
    instance_destroy();
    exit;
}
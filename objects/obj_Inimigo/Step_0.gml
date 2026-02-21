// Trocar Estado quando o player tiver perto do inimigo
if (instance_exists(obj_Player)){
	
	var distPlayer = point_distance(x,y,obj_Player.x, obj_Player.y);
	
	if (distPlayer <= 200) {
		target = obj_Player;
		state = EnemyState.CHASE;
	} else {
		target = noone;
		state = EnemyState.PATROL;
	}
}


// State Machine
switch (state) {

	case EnemyState.PATROL:
		
		hspdEnemy = spdEnemy * facing;
		
		// Não cair da plataforma
		var frontX = x + (facing * 8);
		var frontY = y + 16;
		
		if (!place_meeting(frontX, frontY, obj_Block)) {
			facing *= -1;
		}
		
	break;
	
	
	case EnemyState.CHASE:
		
		// Entrar em modo perseguidor
		if (target != noone){
			
			facing = sign(target.x - x);
			//Aumentar a velocidade quando entra nesse modo
			hspdEnemy = spdEnemyMax * facing;
			
			if (abs(target.x - x) < 20 && abs(target.y - y) < 16){
				state = EnemyState.ATTACK;
			}
		}
		
	break;
	
	
	case EnemyState.ATTACK:
		hspdEnemy = 0;
		// Ataca quando cooldown é 0
		if (ataque_cool <= 0) {
			ataque = true;
			ataque_cool = ataque_delay;

		}
		
		state = EnemyState.CHASE;
		
	break;
}


// Sistema de Cooldown
if (ataque_cool > 0) {
	ataque_cool--;
	ataque = false;
}


// GRAVIDADE
vspdEnemy += 0.35;

if (vspdEnemy > 6) {
	vspdEnemy = 6;
}


// COLISÃO HORIZONTAL
if (place_meeting(x + hspdEnemy, y, obj_Block)) {
	
	while (!place_meeting(x + sign(hspdEnemy), y, obj_Block)) {
		x += sign(hspdEnemy);
	}
	
	hspdEnemy = 0;
	facing *= -1;
}

x += hspdEnemy;


// COLISÃO VERTICAL
if (place_meeting(x, y + vspdEnemy, obj_Block)) {
	
	while (!place_meeting(x, y + sign(vspdEnemy), obj_Block)) {
		y += sign(vspdEnemy);
	}
	
	vspdEnemy = 0;
}

y += vspdEnemy;
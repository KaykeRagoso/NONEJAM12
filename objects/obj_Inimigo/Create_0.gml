spdEnemy = 1;
spdEnemyMax = spdEnemy + 1;
hspdEnemy = 0;
vspdEnemy = 0;

hpEnemy = 3;

patrol_left = x - 64;
patrol_right = x + 64;

ataque = false;
ataque_cool = 0;
ataque_delay = 30;

target = noone;
facing = 1;



enum EnemyState{
	PATROL,
	CHASE,
	ATTACK,
	DEATH
}

state = EnemyState.PATROL;

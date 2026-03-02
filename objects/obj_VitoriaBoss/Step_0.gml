
// ==========================================
// DETECTAR MORTE DO BOSS
// ==========================================

if (instance_exists(obj_Boss)) {
    var boss = obj_Boss;
    
    // Se boss morreu
    if (boss.state == EnemyState.DEATH && !vitoria_ativa) {
        vitoria_ativa = true;
        vitoria_tempo = 0;
        audio_stop_all(); // Para música
    }
}

// ==========================================
// ANIMAR MENSAGEM DE VITÓRIA
// ==========================================

if (vitoria_ativa) {
    vitoria_tempo++;
    
    // Fade in dos primeiros 60 frames
    if (vitoria_tempo <= 60) {
        alpha_texto = vitoria_tempo / 60;
    } 
    // Fade out dos últimos 60 frames
    else if (vitoria_tempo > vitoria_duracao - 60) {
        alpha_texto = (vitoria_duracao - vitoria_tempo) / 60;
    } 
    // Mantém visível no meio
    else {
        alpha_texto = 1;
    }
    
    // Quando acabar, voltar ao menu (opcional)
    if (vitoria_tempo >= vitoria_duracao) {
        room_goto(menu); // Mude para sua room de menu
    }
}

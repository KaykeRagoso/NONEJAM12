texto = [];
index = 0;
index_letra = 1;
velocidade = 0.3;

// Trava o player ao iniciar o diálogo
with (obj_Player) {
    state = PlayerState.CUTSCENE;
}
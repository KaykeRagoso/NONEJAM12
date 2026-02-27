if (keyboard_check_pressed(vk_space)) {
    index++;
    index_letra = 1;

    if (index >= array_length(texto)) {
        // Libera o player ao terminar o diálogo
        with (obj_Player) {
            state = PlayerState.IDLE;
        }
        instance_destroy();
    }
}
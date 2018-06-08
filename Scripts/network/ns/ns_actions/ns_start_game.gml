var cmd;

if (!ns_is_logged_in()) {
    i18n_show_message('login_needed')
    exit
}

if (!ns_is_in_lobby()) {
    i18n_show_message('not_in_lobby')
    exit
}

cmd = cmd_init('start_game', 1, 'lobbyId', global.__current_lobby_id)

ns_send(cmd)


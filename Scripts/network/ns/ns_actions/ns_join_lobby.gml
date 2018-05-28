// join_lobby
var name, lobbyId, password, retry, cmd;

if (!ns_is_logged_in()) {
    i18n_show('login_needed')
    exit
}

lobbyId = get_integer(i18n_get('input_lobby_id'), 0)
password = get_string(i18n_get('password'), '')

ensure_not_empty(lobbyId, 'Lobby id')

if (lobbyId == 0) {
    retry = show_message_ext(i18n_get('retry'), '&Yes', '', '&No')
    if (retry == 1) {
        ns_join_lobby()
    }
    exit
}

cmd = cmd_init('join_lobby', 1, 'lobbyId', lobbyId)

if (password != '') {
    cmd = cmd_add(cmd, 1, 'password', password)
}
ns_send(cmd)


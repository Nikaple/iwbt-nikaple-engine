// join_lobby
var name, lobbyId, password, retry, cmd;

if (!ns_is_logged_in()) {
    i18n_show_message('login_needed')
    exit
}

lobbyId = i18n_get_integer('input_lobby_id', 0)
if (lobbyId == 0) {
    show_message(i18n_get('cannot_be_empty', i18n_get('lobby_id')))
    retry = i18n_show_message_ext('retry', '&Yes', '', '&No')
    if (retry == 1) {
        ns_join_lobby()
    }
    exit
}

password = i18n_get_string('password', '')

cmd = cmd_init('join_lobby', 1, 'lobbyId', lobbyId)

if (password != '') {
    cmd = cmd_add(cmd, 1, 'password', password)
}
ns_send(cmd)


// create_lobby
var name, lobbyName, password, needPassword, retry, cmd;

if (!ns_is_logged_in()) {
    i18n_show('login_needed')
    exit
}

lobbyName = i18n_get_string(
    'input_lobby_name',
    global.__player_name + i18n_get('default_lobby_name')
)
password = i18n_get_string('password', '')

ensure_not_empty(lobbyName, 'lobby_name')

if (lobbyName == '') {
    retry = i18n_show_message_ext('retry', '&Yes', '', '&No')
    if (retry == 1) {
        ns_create_lobby()
    }
    exit
}

cmd = cmd_init('create_lobby', 1, 'name', lobbyName)

if (password != '') {
    cmd = cmd_add(cmd, 1, 'password', password)
}
ns_send(cmd)


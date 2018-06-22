// create_lobby
var name, lobbyName, password, mode, lobbyMode, retry, cmd;

if (!ns_is_logged_in()) {
    i18n_show_message('login_needed')
    exit
}

lobbyName = i18n_get_string(
    'input_lobby_name',
    i18n_get('default_lobby_name', global.__player_name)
)

if (lobbyName == '') {
    retry = i18n_show_message_ext('retry', '&Yes', '', '&No')
    if (retry == 1) {
        ns_create_lobby()
    }
    exit
}

password = i18n_get_string('input_lobby_password', '')

if (global.game_mode == MODE_USER_SELECT) {
    mode = i18n_show_message_ext('input_lobby_mode', i18n_get('tournament_mode'), '', i18n_get('cooperation_mode'))
    if (mode == 1) {
        lobbyMode = MODE_TOURNAMENT
    } else {
        lobbyMode = MODE_COOPERATION
    }
} else {
    lobbyMode = global.game_mode
}

cmd = cmd_init(
    'create_lobby', 2, 
    'name', lobbyName,
    'mode', lobbyMode
)

if (password != '') {
    cmd = cmd_add(cmd, 1, 'password', password)
}
ns_send(cmd)


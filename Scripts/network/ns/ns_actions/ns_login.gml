// ns_login(username, password)

var user, cmd, retry;

if (is_string(argument1)) {
    // quick login
    username = argument0
    password = argument1
} else {
    user = set_default(argument0, 'username')
    username = i18n_get_string('username', user)
    // read password from ini file
    ini_open(global.option_file_name)
    password = ini_read_string('Account', username, '')
    ini_close()
    // not found, ask for password
    if (password == '') {
        password = i18n_get_string('password', 'password')
    }
}
ensure_not_empty(username, 'username')
ensure_not_empty(password, 'password')

if (username== '' || password == '') {
    retry = i18n_show_message_ext('retry', '&Yes', '', '&No')
    if (retry == 1) {
        ns_login(argument0)
    }
    exit;
}

// send the tcp packet
cmd = cmd_init(
    "login", 2,
    "name", username,
    "password", password
)
ns_send(cmd)


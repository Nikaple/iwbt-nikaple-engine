// login
var name, password, cmd, retry;

name = get_string(i18n_get('username'), 'username')
password = get_string(i18n_get('password'), 'password')

ensure_not_empty(name, i18n_get('username'))
ensure_not_empty(password, i18n_get('password'))

if (name == '' or password == '') {
    retry = show_message_ext(i18n_get('retry'), '&Yes', '', '&No')
    if (retry == 1) {
        ns_login()
    }
    exit;
}

// send the tcp packet
cmd = cmd_init(
    "login", 2,
    "name", name,
    "password", password
)
ns_send(cmd)


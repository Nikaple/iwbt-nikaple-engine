// login
var name, password, cmd, retry;

name = i18n_get_string('username', 'username')
password = i18n_get_string('password', 'password')

ensure_not_empty(name, 'username')
ensure_not_empty(password, 'password')

if (name == '' or password == '') {
    retry = i18n_show_message_ext('retry', '&Yes', '', '&No')
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


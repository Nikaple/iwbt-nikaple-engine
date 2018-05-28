// register
var name, password, cmd;

name = get_string(i18n_get('username'), 'username')
password = get_string(i18n_get('password'), 'password')

cmd = cmd_init(
    "register", 2,
    "name", name,
    "password", password
)

ns_send(cmd)

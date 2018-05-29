// register
var name, password, cmd;

name = i18n_get_string('username', 'username')
password = i18n_get_string('password', 'password')

cmd = cmd_init(
    "register", 2,
    "name", name,
    "password", password
)

ns_send(cmd)

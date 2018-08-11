// register
var cmd;

username = i18n_get_string('username', 'username')
password = i18n_get_string('password', '')

cmd = cmd_init(
    "register", 2,
    "name", username,
    "password", password
)

ns_send(cmd)

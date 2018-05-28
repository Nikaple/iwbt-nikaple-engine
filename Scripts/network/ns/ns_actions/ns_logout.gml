// logout
var cmd;

if (!ns_is_logged_in()) {
    i18n_show('login_needed')
    exit;
}

cmd = cmd_init("logout")

ns_send(cmd)

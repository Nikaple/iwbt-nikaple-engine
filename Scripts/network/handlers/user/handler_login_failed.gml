if (room != rTitle) exit;

var data, msg;
data = argument0;

msg = json_pick(data, 'msg')
debug('Login fail msg: ' + msg)
i18n_show_message('login_failed')

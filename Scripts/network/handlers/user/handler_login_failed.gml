if (room != rTitle) exit;

var data, msg;
data = argument0;

msg = json_pick(data, 'msg')
debug('Login fail msg: ' + msg)
show_message(i18n_get('login_failed'))

if (room != rTitle) exit;

var data, msg;
data = argument0;

msg = json_pick(data, 'msg')
debug('Register fail msg: ' + msg)

switch(msg) {
    case 'username_exists':
        i18n_show_message('register_failed_username_exists')
        break;
    case 'username_not_valid':
        i18n_show_message('register_failed_username_not_valid')
        break;
    case 'password_not_valid':
        i18n_show_message('register_failed_password_not_valid')
        break;
    default:
        i18n_show_message('register_failed')
        break;
}


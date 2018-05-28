if (room != rTitle) exit;

var data, msg;
data = argument0;

msg = json_pick(data, 'msg')
debug('Register fail msg: ' + msg)

switch(msg) {
    case 'username_exists':
        show_message(i18n_get('register_failed_username_exists'))
        break;
    case 'username_not_valid':
        show_message(i18n_get('register_failed_username_not_valid'))
        break;
    case 'password_not_valid':
        show_message(i18n_get('register_failed_password_not_valid'))
        break;
    default:
        show_message(i18n_get('register_failed'))
        break;
}


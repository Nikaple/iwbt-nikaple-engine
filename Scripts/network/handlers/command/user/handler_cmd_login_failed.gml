if (room != rTitle) exit;

var data, msg, curUser, curPass, iniUser;
data = argument0;

msg = json_pick(data, 'msg')
debug('Login fail msg: ' + msg)

i18n_show_message('login_failed')

// delete username & password in ini file
if (msg == 'wrong_password') {
    ini_open(global.option_file_name)
    curUser = objTitleController.username
    if (ini_key_exists('Account', curUser)) {
        ini_key_delete('Account', curUser)
    }
    ini_close()
}

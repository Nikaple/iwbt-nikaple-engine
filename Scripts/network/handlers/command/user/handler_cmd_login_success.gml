if (room != rTitle) exit

debug('Login success!')

var data, curUser, curPass, iniPass;
data = argument0

global.__player_id = json_pick(data, 'id')
global.__player_name = json_pick(data, 'name')

// send udp handshake packet
if (!instance_exists(objUdpShakehand)) {
    instance_create(0, 0, objUdpShakehand)
} else {
    objUdpShakehand.alarm[0] = 5
}

// save username & password to options.ini
curUser = objTitleController.username
curPass = objTitleController.password
ini_open(global.option_file_name)
ini_write_string('Account', 'lastuser', curUser)
iniPass = ini_read_string('Account', curUser, '')
if (iniPass != objTitleController.password) {
    // update ini file when password is not the same
    shouldRemember = i18n_show_question('remember_password')
    if (shouldRemember) {
        ini_write_string('Account', curUser, curPass)
    }
}
ini_close()


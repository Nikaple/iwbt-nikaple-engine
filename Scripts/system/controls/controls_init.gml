// initialize controls
ini_open(global.option_file_name)

global.leftbutton = ini_read_real('Controls', 'Left', vk_left)
global.rightbutton = ini_read_real('Controls', 'Right', vk_right)
global.upbutton = ini_read_real('Controls', 'Up', vk_up)
global.downbutton = ini_read_real('Controls', 'Down', vk_down)
global.jumpbutton = ini_read_real('Controls', 'Jump', vk_lshift)
global.shootbutton = ini_read_real('Controls', 'Shoot', ord('Z'))
global.restartbutton = ini_read_real('Controls', 'Restart', ord('R'))
global.backbutton = ini_read_real('Controls', 'Back', vk_backspace)
global.pausebutton = ini_read_real('Controls', 'Pause', ord('P'))
global.skipbutton = ini_read_real('Controls', 'Skip', ord('S'))
global.savebutton = ini_read_real('Controls', 'Save', ord('S'))
global.resetbutton = ini_read_real('Controls', 'Reset', vk_f2)
global.quitbutton = ini_read_real('Controls', 'Quit', vk_escape)
global.mutebutton = ini_read_real('Controls', 'Mute', ord('M'))
global.chatbutton = ini_read_real('Controls', 'Chat', vk_f1)
global.suicidebutton = ini_read_real('Controls', 'Chat', ord('Q'))

ini_close()

if (!file_exists(global.option_file_name)) {
    controls_update()
}


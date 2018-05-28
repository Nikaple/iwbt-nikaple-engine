// initialize controls
ini_open(global.option_file_name)

global.leftbutton = ini_read_real('Controls', 'Left', vk_left)
global.rightbutton = ini_read_real('Controls', 'Right', vk_right)
global.upbutton = ini_read_real('Controls', 'Up', vk_up)
global.downbutton = ini_read_real('Controls', 'Down', vk_down)
global.jumpbutton = ini_read_real('Controls', 'Jump', vk_shift)
global.shootbutton = ini_read_real('Controls', 'Shoot', ord('Z'))
global.restartbutton = ini_read_real('Controls', 'Restart', ord('R'))
global.pausebutton = ini_read_real('Controls', 'Pause', ord('P'))
global.skipbutton = ini_read_real('Controls', 'Skip', ord('S'))

ini_close()

if (!file_exists(global.option_file_name)) {
    controls_update()
}


//change control settings

ini_open(global.option_file_name)

//set new settings
ini_write_real('Controls', 'Left', global.leftbutton)
ini_write_real('Controls', 'Right', global.rightbutton)
ini_write_real('Controls', 'Up', global.upbutton)
ini_write_real('Controls', 'Down', global.downbutton)
ini_write_real('Controls', 'Jump', global.jumpbutton)
ini_write_real('Controls', 'Shoot', global.shootbutton)
ini_write_real('Controls', 'Restart', global.restartbutton)
ini_write_real('Controls', 'Pause', global.pausebutton)
ini_write_real('Controls', 'Pause', global.backbutton)
ini_write_real('Controls', 'Skip', global.skipbutton)
ini_write_real('Controls', 'Save', global.savebutton)
ini_write_real('Controls', 'Reset', global.resetbutton)
ini_write_real('Controls', 'Quit', global.quitbutton)
ini_write_real('Controls', 'Mute', global.mutebutton)
ini_write_real('Controls', 'Chat', global.chatbutton)
ini_write_real('Controls', 'Suicide', global.suicidebutton)

ini_close()


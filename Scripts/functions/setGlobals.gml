/****** GAME SETTINGS ******/
// game title
global.game_title = 'I wanna be the Engine Nikaple Edition'
// game mode, available options:
// MODE_SINGLE_PLAYER: single player only.
// MODE_TOURNAMENT: tournament mode only, only synchronize the players' positions.
// MODE_COOPERATION: cooperation mode only, position/saves/triggers will all be synchronized.
// MODE_USER_SELECT: let the user choose mode when creating room.
global.game_mode = MODE_USER_SELECT
// first room
global.first_stage = rHub
// enable production mode, set this to true before releasing your game
global.enable_production_mode = !debug_mode
// internationalization
global.enable_internationalization = true
// chat functions
global.enable_chat = true
// language, available options:*/
// LANG_CN: Simplified Chinese
// LANG_EN: English
// LANG_JP: Japanese
global.default_language = LANG_CN
// Encoding of your operating system. You should change this if you're not using
// a simplified Chinese operating system. Check Microsoft Dev Center for your encoding:
// https://msdn.microsoft.com/en-us/library/windows/desktop/dd317756(v=vs.85).aspx
// If you're using a Japanese operating system, change `gb2312` to `shift-jis`
// If you're using a English operating system, change `gb2312` to `utf-16`
global.encoding = 'gb2312'
// key for save encryption, please change this before releasing your game
global.key = "huYJCGjN3rwG%du!aZc0Phw9P&9WJBYd1*CjXmXdY@tWYW83Tuv%7FHd6Be2GBTS"
// save mode, available options:
// SAVE_MODE_SHOOT: shoot to save;
// SAVE_MODE_TOUCH: touch to save;
// SAVE_MODE_PRESS: press `global.savebutton` to save,
//                  which can be modified in script `controls_init`.
//                  Default is 'S'.
global.save_mode = SAVE_MODE_SHOOT

/***** NETWORK SETTINGS *****/
// server ip address
// THIS IP IS ONLY FOR TESTING!
global.ip_address = '139.199.18.59'
// sync player status every ? frame
global.max_sync_cycle = 3

/****** DEBUG SETTINGS ******/
// lite mode (set to true for convenient testing & debugging, set to false when you want release your game)
// tips : load less music for faster loading
global.enable_lite_mode = false
// tips : you'd better register your own account for testing.
// host name & pass for debug
global.debug_host_name = 'username2'
global.debug_host_pass = 'password'
// guest name & pass for debug
global.debug_guest_name = 'username3'
global.debug_guest_pass = 'password'

// Minor settings. You should check this if above is not enough.
setGlobalsMinor()

/****** GAME SETTINGS ******/
// game title
global.game_title = 'I wanna be the Engine Nikaple Edition'
// first room
global.first_stage = rHub
// enable production mode
global.enable_production_mode = false
// internationalization
global.enable_internationalization = true
// language, defined in Resources -> Define Constants...
global.language = LANG_CN
// use built-in draw functions or not
global.enable_builtin_drawing = false
// if we want to stream music, music volume will be decreased after player's death, but it will not be paused.
// as a result, the loading of music files will be extremely fast.
global.enable_stream_music = true
// if focus is enabled, player won't move when game loses focus
global.enable_dll_focus = false
// use keyboard_key_press to simulate focus
global.enable_simulate_focus = true
// key code used for check focus
global.focus_key_code = 1
// enable save encryption
global.enable_encryption = true
// key for encryption
global.key = "huYJCGjN3rwG%du!aZc0Phw9P&9WJBYd1*CjXmXdY@tWYW83Tuv%7FHd6Be2GBTS"

/***** NETWORK SETTINGS *****/
// server ip address
// THIS IP IS ONLY FOR TESTING!
global.ip_address = '127.0.0.1'//'139.199.18.59'
// server tcp port
global.tcp_port = 3738
// server udp port
global.udp_port = 3738
// online mode
global.online_mode = true
// sync player status every ? frame
global.max_sync_cycle = 3

/****** DEBUG SETTINGS ******/
// lite mode (set to true for convenient testing & debugging, set to false when you want release your game)
// tips : load less music for faster loading
global.enable_lite_mode = false
// host name & pass for debug
global.debug_host_name = 'username'
global.debug_host_pass = 'password'
// guest name & pass for debug
global.debug_guest_name = 'test'
global.debug_guest_pass = 'test'

// Minor settings.
setGlobalsMinor()

// something you might not change
// server tcp port
global.tcp_port = 3738
// server udp port
global.udp_port = 3738
// if we want to stream music, music volume will be decreased after player's death, but it will not be paused.
// as a result, the loading of music files will be extremely fast.
global.enable_stream_music = true
// use built-in draw functions to draw english text or not, used in i18n_draw_xxx
global.enable_builtin_drawing = false
// room width & height
global.game_room_width = 800
global.game_room_height = 608
// enable save encryption
global.enable_encryption = true
// if focus is enabled, player won't move when game loses focus
global.enable_focus = true
// key code used for check focus
global.focus_key_code = 1
// frame per second (fps)
global.frame_rate = 50
// whether can pause in boss room or not
global.enable_pause_in_boss_room = false
// whether enable jump cancelling or not
global.enable_jump_cancel = false
// whether enable bunny hop or not (player jumps 1px lower than normal, this is not `real` disable!)
global.enable_bunny_hop = false
// whether play can switch between fullscreen and window mode or not
global.enable_fullscreen = true
// whether enable keypad or not
global.enable_keypad = false
// set the spike sprite automaically or not
// see "playerKiller" and "spikeSprite" for more information
global.enable_auto_spike_sprite = true
// set the block auto tile or not
global.enable_auto_tile = true
// total boss number
global.boss_number = 64
// total item number
global.item_number = 64
// total data number
global.data_number = 64
// total text number
global.text_number = 64
// where to save the game data
global.saving_directory = working_directory + '\Data\Save\'
// where to load the musics
global.music_directory = working_directory + '\Data\Music\'
// where to load the sound effects
global.sound_directory = working_directory + '\Data\Sound\'
// where to load plugins
global.plugin_directory = working_directory + '\Data\Plugin\'
// where to load fonts
global.font_directory = working_directory + "\Data\Font\"
//the name of options file
global.option_file_name = 'options.ini'

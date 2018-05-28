//initialize audio settings

//default value setting

global.audio_music_volume_default = 85
global.audio_sound_volume_default = 100

// ini file create

ini_open(global.option_file_name)

if (!ini_key_exists('Audio', 'music_volume')) {
    ini_write_real('Audio', 'music_volume', global.audio_music_volume_default)
}
if (!ini_key_exists('Audio', 'sound_volume')) {
    ini_write_real('Audio', 'sound_volume', global.audio_sound_volume_default)
}
if (!ini_key_exists('Audio', 'music_muted')) {
    ini_write_real('Audio', 'music_muted', 0)
}
if (!ini_key_exists('Audio', 'sound_muted')) {
    ini_write_real('Audio', 'sound_muted', 0)
}

// ini file read

global.audio_music_volume = ini_read_real(
    'Audio',
    'music_volume',
    global.audio_music_volume_default
)
global.audio_sound_volume = ini_read_real(
    'Audio',
    'sound_volume',
    global.audio_sound_volume_default
)
global.audio_music_muted = ini_read_real('Audio', 'music_muted', 0)
global.audio_sound_muted = ini_read_real('Audio', 'sound_muted', 0)

ini_close()


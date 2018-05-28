//update audio settings, save settings to the option file

ini_open(global.option_file_name)

//set new settings
ini_write_real('Audio', 'music_volume', global.audio_music_volume)
ini_write_real('Audio', 'sound_volume', global.audio_sound_volume)
ini_write_real('Audio', 'music_muted', global.audio_music_muted)
ini_write_real('Audio', 'sound_muted', global.audio_sound_muted)

//update global sound variables
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

//change music volume instantly
SS_SetSoundVol(global.curMusic, 2000 + 80 * global.audio_music_volume)


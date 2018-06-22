//load the music
var stream, ext;
stream = set_default(argument1, global.enable_stream_music)
ext = set_default(argument2, 'ogg')
return SS_LoadSound(global.music_directory + argument0 + '.' + ext, stream)


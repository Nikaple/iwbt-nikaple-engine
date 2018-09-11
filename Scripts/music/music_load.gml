// load the music
var name, stream, dir, ext, loaded;
name = argument0
stream = argument1
dir = set_default(argument2, global.music_directory)
ext = set_default(argument3, '.ogg')

// reload the music if duplicate
loaded = variable_global_get('BGM_' + name)
if (SS_IsHandleValid(loaded)) {
    SS_FreeSound(loaded)
}

return SS_LoadSound(dir + name + ext, stream)


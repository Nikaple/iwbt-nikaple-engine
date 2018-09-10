//Load a sound in ogg or wav format into memory
/*
argument0: filename
argument1 (optional): 1 to stream the sound instead
                        of loading it all at once.
            (default) 0 to load it all at once
*/
/*
return: sound handle if successful or "0" as string else
*/
var handle
if is_real(argument0) then return "0"
handle = external_call(global.dll_SS_LoadSound, argument0, string(argument1));
// If the music is loaded by developer, remove it from warn list
if (SS_IsHandleValid(handle)) {
    ds_list_remove(global.__music_not_loaded, name + ext)
}
return handle

/// resource_map_sounds(map,file)
//
//  Fills a given map data structure with the id values of all
//  sound resources, keyed by strings of their names. A sound
//  file is required in order for this function to work.
//
//      map         map data structure, real
//      file        sound file name, string
//
/// GMLscripts.com/license
{
    var no, i, ds_map, snd, name;
    ds_map = argument0
    snd = set_default(argument1, global.music_directory + 'Null.ogg')
    no = sound_add(snd, 0, false)
    if (no != -1) {
        sound_delete(no)
        for (i = 0; i < no; i += 1) {
            if (sound_exists(i)) {
                name = sound_get_name(i)
                if (!is_valid_var(name, true)) {
                    ds_list_add(global.__resources_invalid, name)
                }
                if (ds_map_exists(ds_map, name)) {
                    ds_list_add(global.__resources_conflict, name)
                } else {
                    ds_map_add(ds_map, name, i)
                }
            }
        }
    }
}


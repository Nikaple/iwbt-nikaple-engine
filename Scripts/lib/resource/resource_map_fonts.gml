/// resource_map_fonts(map)
//
//  Fills a given map data structure with the id values of all
//  font resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var no, i, ds_map, name;
    ds_map = argument0
    no = font_add('ariel', 12, false, false, 32, 32)
    font_delete(no)
    for (i = 0; i < no; i += 1) {
        if (font_exists(i)) {
            name = font_get_name(i)
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


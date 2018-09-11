/// resource_map_rooms(map)
//
//  Fills a given map data structure with the id values of all
//  room resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var ds_map, i, name;
    ds_map = argument0
    i = room_first
    while (room_exists(i)) {
        name = room_get_name(i)
        if (!is_valid_var(name, true)) {
            ds_list_add(global.__resources_invalid, name)
        }
        if (ds_map_exists(ds_map, name)) {
            ds_list_add(global.__resources_conflict, name)
        } else {
            ds_map_add(ds_map, name, i)
        }
        i = room_next(i)
    }
}


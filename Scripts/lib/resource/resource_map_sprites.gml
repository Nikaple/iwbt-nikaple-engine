/// resource_map_sprites(map)
//
//  Fills a given map data structure with the id values of all
//  sprite resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var surf, no, i, ds_map, name;
    ds_map = argument0
    surf = surface_create(1, 1)
    no = sprite_create_from_surface(surf, 0, 0, 1, 1, false, false, 0, 0)
    surface_free(surf)
    sprite_delete(no)
    for (i = 0; i < no; i += 1) {
        if (sprite_exists(i)) {
            name = sprite_get_name(i)
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


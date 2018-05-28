/// @desc destroy the json, free the memory
/// @param {number} The json id

var mapsAndLists, jsonId, maps, lists, i;
jsonId = argument0

mapsAndLists = ds_map_find_value(__json_reference, jsonId)
maps = ds_map_find_value(mapsAndLists, 'maps')
lists = ds_map_find_value(mapsAndLists, 'lists')

for (i = 0; i < ds_list_size(maps); i += 1) {
    ds_map_destroy(ds_list_find_value(maps, i))
}

for (i = 0; i < ds_list_size(lists); i += 1) {
    ds_list_destroy(ds_list_find_value(lists, i))
}

ds_list_destroy(maps)
ds_list_destroy(lists)
ds_map_destroy(mapsAndLists)
ds_map_delete(__json_reference, jsonId)


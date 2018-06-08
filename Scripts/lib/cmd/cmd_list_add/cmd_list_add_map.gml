/// cmd_list_add_map(listId, kvCount, k1, v1, k2, v2, ..., kn, vn)
/// @param {DSMap} parentId     Parent to append to
/// @param {Number} kvCount     How many key-value pairs to append to the map ? Max is 7
/// @param {Any[]} k...,v...    Key-value pairs

var pid, key, kvCount, i;
pid = argument0
kvCount = argument1

key = string(_cmd_list_max_index(pid) + 1)
map = ds_map_create()

ds_map_add(pid, key, map)
_cmd_mark_as_ds(pid, key)

error_kv('cmd_list_add_map', kvCount)

for (i = 0; i < kvCount; i += 1) {
    _cmd_check_key(argument[i * 2 + 2], 'cmd_list_add_map')
    ds_map_add(map, argument[i * 2 + 2], argument[i * 2 + 3])
}

return map


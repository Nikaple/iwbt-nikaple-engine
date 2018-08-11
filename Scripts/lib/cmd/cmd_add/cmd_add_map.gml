/// cmd_add_map(cmdId, key, kvCount, k1, v1, k2, v2, ...)

/// @param {DSMap} parentId     Parent to append to
/// @param {String} key         The key of list in parent DSMap
/// @param {Number} kvCount     How many key-value pairs to append to the map ? Max is 7
/// @param {Any[]} k...,v...    Key-value pairs

var pid, key, kvCount, map, i;
pid = argument0
key = argument1
kvCount = argument2
map = ds_map_create()

ds_map_add(pid, key, map)
_cmd_mark_as_ds(pid, key)

error_kv('cmd_add_map', kvCount)

for (i = 0; i < kvCount; i += 1) {
    _cmd_check_key(argument[i * 2 + 3], 'cmd_add_map')
    ds_map_add(map, _ns_encode(argument[i * 2 + 3]), _ns_encode(argument[i * 2 + 4]))
}

return map


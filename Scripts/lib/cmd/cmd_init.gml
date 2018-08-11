/// Initialize a command to the server

/// cmd_init(type, kvCount, k1, v1, k2, v2, ..., kn, vn)
/// @param {String} type         Command type
/// @param {Number} kvCount     How many key-value pairs to append to the map ? Max is 7
/// @param {Any[]} k...,v...    Key-value pairs

var map, kvCount, type;
type = argument0
map = ds_map_create()

if (is_string(type)) {
    kvCount = argument1
    error_kv('cmd_init', kvCount)
    if (kvCount < 7) {
        error_kv_zero('cmd_init', kvCount, argument[kvCount * 2 + 2])
    }
    ds_map_add(map, 'cmd', type)
    for (i = 0; i < kvCount; i += 1) {
        _cmd_check_key(argument[i * 2 + 2], 'cmd_init')
        ds_map_add(map, _ns_encode(argument[i * 2 + 2]), _ns_encode(argument[i * 2 + 3]))
    }
} else {
    kvCount = type
    error_kv('cmd_init', kvCount)
    for (i = 0; i < kvCount; i += 1) {
        _cmd_check_key(argument[i * 2 + 1], 'cmd_init')
        ds_map_add(map, _ns_encode(argument[i * 2 + 1]), _ns_encode(argument[i * 2 + 2]))
    }
}

return map


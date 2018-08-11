/// Add key-value pairs to existing command if it's not zero

/// cmd_add(command, kvCount, k1, v1, k2, v2, ..., kn, vn)
/// @param {DSMap} type         Command map
/// @param {Number} kvCount     How many key-value pairs to append to the map ? Max is 7
/// @param {Any[]} k...,v...    Key-value pairs

var map, kvCount, i;
map = argument
kvCount = argument1

error_kv('cmd_add', kvCount)

for (i = 0; i < kvCount; i += 1) {
    _cmd_check_key(argument[i * 2 + 2], 'cmd_add')
    if (is_real(argument[i * 2 + 3])) {
        if (argument[i * 2 + 3] != 0) {
            ds_map_add(map, _ns_encode(argument[i * 2 + 2]), _ns_encode(argument[i * 2 + 3]))
        }
    } else {
        ds_map_add(map, _ns_encode(argument[i * 2 + 2]), _ns_encode(argument[i * 2 + 3]))
    }
}

return map


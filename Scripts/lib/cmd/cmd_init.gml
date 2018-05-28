/// Initialize a command to the server

/// cmd_init(type, kvCount, k1, v1, k2, v2, ..., kn, vn)
/// @param {String} type         Command type
/// @param {Number} kvCount     How many key-value pairs to append to the map ? Max is 7
/// @param {Any[]} k...,v...    Key-value pairs

var map, kvCount, type;
type = argument0
kvCount = argument1
map = ds_map_create()

ds_map_add(map, 'cmd', type)

if (kvCount) {
    if (!is_real(kvCount)) {
        show_error(
            'Error in script `cmd_init`, argument[1]: kvCount should be a number',
            0
        )
    }
}

for (i = 0; i < kvCount; i += 1) {
    _cmd_check_key(argument[i * 2 + 2], 'cmd_init')
    ds_map_add(map, argument[i * 2 + 2], argument[i * 2 + 3])
}

return map


// ns_set_data(dataCount, k1, v1, k2, v2, ...)
// Save user data to server

var dataCount, i, cmd, map, val;
dataCount = argument0

error_kv('ns_set_data', dataCount)
error_kv_zero('ns_set_data', dataCount, argument[dataCount * 2 + 2])

cmd = cmd_init(
    'set_data', 1,
    'id', id - 100000
)
map = cmd_add_map(cmd, 'data')

for (i = 0; i < dataCount; i += 1) {
    cmd_add(
        map, 1,
        argument[i * 2 + 1], argument[i * 2 + 2]
    )
}

ns_send(cmd)

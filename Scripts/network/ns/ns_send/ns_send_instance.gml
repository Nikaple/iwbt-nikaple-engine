// ns_send_instance(kvCount, k1, v1, k2, v2, ...)
// Send a command to sync the instance
if (!ns_is_in_game()) exit

var i, syncId, kvCount, map;
syncId = string(id - 100000)
kvCount = argument0
map = cmd_add_map(global.__cmd_sync, syncId)

error_kv('ns_send_instance', kvCount)
error_kv_zero('ns_send_instance', kvCount, argument[kvCount * 2 + 1])

for (i = 0; i < kvCount; i += 1) {
    ds_map_add(map, argument[i * 2 + 1], argument[i * 2 + 2])
}


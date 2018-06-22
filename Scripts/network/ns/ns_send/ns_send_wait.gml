// ns_send_wait(waitName, flag, kvCount, k1, v1, k2, v2, ...)
// Send a command to sync an wait wait of `waitName` flagged with `flag` with key-value pairs
if (!ns_is_in_game() || noSync || global.tournament_mode) exit

var kvCount, i, map, waitMap, waitName, flag, waitEventMap;
waitName = argument0
flag = argument1
kvCount = argument2

if (is_real(flag)) {
    if (flag == -1 || flag == 0) {
        flag = id - 100000
    }
}

debug('Syncing `wait`... `wait` name:', argument0)

error_kv('ns_send_wait', kvCount)
error_kv_zero('ns_send_wait', kvCount, argument[kvCount * 2 + 3])

if (ds_map_exists(global.__cmd_sync, 'e')) {
    waitMap = json_pick(global.__cmd_sync, 'e')
} else {
    waitMap = cmd_add_map(global.__cmd_sync, 'e')
}

map = cmd_add_map(waitMap, "wait")
ds_map_add(map, "name", waitName)
ds_map_add(map, "flag", flag)

for (i = 0; i < kvCount; i += 1) {
    ds_map_add(map, argument[i * 2 + 3], argument[i * 2 + 4])
}


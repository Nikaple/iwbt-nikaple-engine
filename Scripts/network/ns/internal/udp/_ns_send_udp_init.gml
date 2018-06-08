// ns_send_udp_begin(scope)

var scope, buffer;
// scope: It is highly recommended to use the default setting, 
//        do not change unless you know what you are doing.
// SCOPE_DEFAULT: send message to the players who is in the same room with you 
// SCOPE_OTHERS: send message to all other players
// SCOPE_ALL: send message to all players (include yourself)

scope = set_default(argument0, SCOPE_DEFAULT)

buffer_clear(global.udpSyncBufId)
// CMD_TYPE_SYNC is defined in Resources -> Define Constants
buffer_write_uint8(global.udpSyncBufId, (CMD_TYPE_SYNC << 4) + scope)
buffer_write_uint8(global.udpSyncBufId, ns_get_game_id())
buffer_write_uint8(global.udpSyncBufId, ns_get_player_index())
buffer_write_uint16(global.udpSyncBufId, room)

return buffer_get_length(global.udpSyncBufId)

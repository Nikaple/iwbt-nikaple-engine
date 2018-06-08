// ns_send_udp_begin(type) type : UDP_SYNC_PLAYER / UDP_SYNC_INSTANCE

// CMD_TYPE_SYNC, UDP_SYNC_PLAYER and UDP_SYNC_INSTANCE are defined in Resources -> Define Constants

var type;

// type: Currently `type` has 2 possible values: 
// UDP_SYNC_PLAYER:  to sync player
// UDP_SYNC_INSTANCE: to sync instances based on their id. (default)

type = set_default(argument0, UDP_SYNC_INSTANCE)

buffer_write_uint8(global.udpSyncBufId, type)
if (type == UDP_SYNC_INSTANCE) {
    buffer_write_uint16(global.udpSyncBufId, id - 100000)
}

return global.udpSyncBufId

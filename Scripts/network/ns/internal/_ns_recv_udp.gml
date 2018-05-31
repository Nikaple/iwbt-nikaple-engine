// handle udp packets in objClient step event
var cmd, times, idxAndObj, obj, idx, fromName;

while (udpsocket_receive(global.sockId, global.udpBufId)) {
    // read the buffer
    cmd = buffer_read_uint8(global.udpBufId)
    // server command: 127 ~ 255
    if (cmd >> 7 > 0) {
        switch (cmd & 127) {
            case UDP_CMD_SHAKEHAND:
                times = buffer_read_uint8(global.udpBufId)
                _ns_handle('udp_shakehand', times)
        }
    } else {
        buffer_set_pos(global.udpBufId, 0)
        while (!buffer_at_end(global.udpBufId)) {
            idxAndObj = buffer_read_uint8(global.udpBufId)
            // the index of player which sends the message
            idx = idxAndObj >> 4
            fromName = ns_get_other_player_name(idx)
            // type of object
            obj = idxAndObj & 15
            switch (obj) {
                case UDP_OBJECT_PLAYER:
                    handler_sync_player(fromName, global.udpBufId)
                    break
                case UDP_OBJECT_OTHER:
                    _id._room = buffer_read_uint16(global.udpBufId)
                    _id = buffer_read_uint16(global.udpBufId) + 100000
                    debug('sync id:', _id)
                    _id.buffer = global.udpBufId
                    with (_id) {
                        event_user(14)
                    }
                    break
                default:
                    buffer_clear(global.udpBufId)
                    break
            }
        }   
    }
    buffer_clear(global.udpBufId)
}


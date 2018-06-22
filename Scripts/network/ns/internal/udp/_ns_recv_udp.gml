// handle udp packets in objClient step event
var cmd, times, fromIdx, fromName, type, _room;

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
        // the index of player which sends the message
        fromIdx = buffer_read_uint8(global.udpBufId)
        // the name of player which sends the message
        fromName = ns_get_other_player_name(fromIdx)
        // current room
        _room = buffer_read_uint16(global.udpBufId)
        while (!buffer_at_end(global.udpBufId)) {
            // type of object
            type = buffer_read_uint8(global.udpBufId)
            switch (type) {
                case UDP_SYNC_PLAYER:
                    _ns_recv_player(fromIdx, fromName, _room, global.udpBufId)
                    break
                case UDP_SYNC_INSTANCE:
                    _id = buffer_read_uint16(global.udpBufId) + 100000
                    _id._room = _room
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


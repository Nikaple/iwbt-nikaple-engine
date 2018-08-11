// handle udp packets in objClient step event
// DO NOT FUCK WITH THESE
var len, cmd, times, fromIdx, fromName, type, _room, curPos, length, innerLen, tmpBuf, curPos;

innerLen = 0

while (udpsocket_receive(global.sockId, global.udpBufId)) {
    // read the length first
    length = buffer_get_length(global.udpBufId)
    if (length < 10) {
        len = buffer_read_uint16(global.udpBufId)
        cmd = buffer_read_uint8(global.udpBufId)
        // server command: 127 ~ 255
        if (cmd >> 7 > 0) {
            switch (cmd & 127) {
                case UDP_CMD_SHAKEHAND:
                    times = buffer_read_uint8(global.udpBufId)
                    _ns_handle('udp_shakehand', times)
            }
        }
        buffer_clear(global.udpBufId)
    } else {
        len = buffer_read_uint16(global.udpBufId)
        while (!buffer_at_end(global.udpBufId)) {
            innerLen = buffer_read_uint8(global.udpBufId)
            tmpBuf = buffer_create()
            curPos = buffer_get_pos(global.udpBufId)
            buffer_write_buffer_part(tmpBuf, global.udpBufId, curPos, innerLen - 1)
            _ns_handle_buffer(tmpBuf)
            buffer_set_pos(global.udpBufId, curPos + innerLen - 1)
            buffer_clear(tmpBuf)
        }
    }
    buffer_clear(global.udpBufId)
}



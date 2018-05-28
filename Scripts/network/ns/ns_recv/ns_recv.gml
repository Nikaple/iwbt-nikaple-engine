// handle all commands in objClient step event

var size, response, command

// receive tcp messages (commands)
clearbuffer()
size = receivemessage(global.sockId, 0)
if (size > 0) {
    response = readsep(CMD_NEWLINE)
    command = json_decode(response)

    if (global.__debug_raw_json) {
        debug('cmd_handle response: ' + json_log(response))
    }

    _ns_resolve(command)
}

// receive udp messages (sync requests)
clearbuffer()
size = receivemessage(global.udpSockId)

var UDP_SHAKEHAND;
UDP_SHAKEHAND = 0
if (size > 0) {
    var cmd, times;
    cmd = readbyte()
    // server command: 64 ~ 127
    if (cmd >> 6 > 0) {
        switch (cmd & 31) {
            case UDP_SHAKEHAND:
                times = readbyte()
                _ns_handle('udp_shakehand', times)
        }
    } else {
        var objAndIdx, obj, idx, _room, _x, _y, spr, xs, ys, h, v, tmp;
        var PLAYER;
        PLAYER = 0
        setpos(0)
        while (bytesleft() > 0) {
            objAndIdx = readbyte()
            idx = objAndIdx >> 4
            // only 15 objects can by synchronized through udp at most
            obj = objAndIdx & 15
            switch (obj) {
                case PLAYER:
                    // read player(s) data
                    _room = readbyte()
                    _x = readshort()
                    _y = readshort()
                    tmp = readbyte()
                    spr = tmp >> 4
                    tmp = tmp & 15
                    rev = tmp >> 2
                    h = (tmp & 3) - 1
                    v = readshort() / 100
                    ns_recv_player(idx, _room, _x, _y, spr, h, v, rev)
                    break
            }
        }
    }
}


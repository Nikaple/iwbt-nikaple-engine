var buf, fromIdx, fromName, _room, time, type, _id;

buf = argument0;
fromIdx = buffer_read_uint16(buf)
// the name of player which sends the message
fromName = ns_get_other_player_name(fromIdx)
// current room
_room = buffer_read_uint16(buf)
time = buffer_read_uint64(buf)
// drop packets from self (if some bug happens)
if (fromIdx == ns_get_player_index()) {
    exit;
}
// drop packets before current time
if (time < global.__sync_time) {
    exit;
} else {
    global.__sync_time = time
}

while (!buffer_at_end(buf)) {
    // type of object
    type = buffer_read_int8(buf)
    if (type == UDP_SYNC_PLAYER) {
        _ns_recv_player(fromIdx, fromName, _room, buf)
    } else if (type == UDP_SYNC_INSTANCE) {
        _id = buffer_read_uint16(buf) + 100000
        _id._room = _room
        _id.buffer = buf
        with (_id) {
            event_user(14)
        }
    } else {
        break;
    }
}

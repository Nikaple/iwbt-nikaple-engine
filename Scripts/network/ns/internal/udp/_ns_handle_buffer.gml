var buf, fromIdx, fromName, _room, type, _id;

buf = argument0;
fromIdx = buffer_read_uint16(buf)
// the name of player which sends the message
fromName = ns_get_other_player_name(fromIdx)
// current room
//show_message(fromName)
_room = buffer_read_uint16(buf)
while (!buffer_at_end(buf)) {
    // type of object
    type = buffer_read_int8(buf)
    if (type == UDP_SYNC_PLAYER) {
        //show_message('In first player: ' + string(type) + '. Current len: ' + string(len) + '. Current pos: ' + string(buffer_get_pos(buf)))
        _ns_recv_player(fromIdx, fromName, _room, buf)
        //buffer_read_int8(buf)
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

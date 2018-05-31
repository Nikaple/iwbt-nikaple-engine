// ns_send_udp_begin(type) type : UDP_OBJECT_PLAYER / UDP_OBJECT_OTHER

// CMD_TYPE_SYNC, UDP_OBJECT_PLAYER and UDP_OBJECT_OTHER are defined in Resources -> Define Constants

var scope, type, buffer;
scope = set_default(argument0, SCOPE_DEFAULT)
type = set_default(argument0, UDP_OBJECT_OTHER)

buffer = buffer_create()
buffer_write_uint8(buffer, (CMD_TYPE_SYNC << 4) + scope)
buffer_write_uint8(buffer, ns_get_game_id())
buffer_write_uint8(buffer, (ns_get_player_index() << 4) + type)
buffer_write_uint16(buffer, room)

if (type == UDP_OBJECT_OTHER) {
    buffer_write_uint16(buffer, id - 100000)
}

return buffer

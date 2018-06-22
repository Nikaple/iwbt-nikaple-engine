// PLAYER SYNC SCRIPT
// DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING

// ns_send_player(id)
// Send a command to sync player status
if (!ns_is_in_game()) exit

var _id, _x, _y, spr, xs, ys, h, v, buffer;
_id = argument0
_x = round(_id.x)
_y = round(_id.y)
spr = _id.spr
h = _id.h + 1
v = round(_id.vspeed * 100)

// data buffer:
//  2 byte | 2 byte | 4 bit |  2 bit  |  2 bit  | 2 byte |
//    x    |    y   |  spr  | reverse |    h    |   v    |

// playerIdx <= 15

if (global.__debug_udp_verbose_mode) {
    debug('sending packet:', 'room', room, 'xy', _x, _id.y, 'sp: ' + string(_id.h) + ',' + string(_id.vspeed))
}

/*buffer = buffer_create()
buffer_write_uint8(buffer, (CMD_TYPE_SYNC << 4) + scope)
buffer_write_uint8(buffer, ns_get_game_id())
buffer_write_uint8(buffer, ns_get_player_index())
buffer_write_uint16(buffer, room)
// UDP_SYNC_PLAYER is defined in Resources -> Define Constants
buffer_write_uint8(buffer, UDP_SYNC_PLAYER)*/
buffer = ns_sync_begin(UDP_SYNC_PLAYER)
buffer_write_int16(buffer, _x)
buffer_write_int16(buffer, _y)
buffer_write_int8(buffer, (spr << 4) + (global.reverse << 2) + h)
buffer_write_int16(buffer, v)
//udpsocket_send(global.udpSockId, buffer)
//buffer_destroy(buffer)

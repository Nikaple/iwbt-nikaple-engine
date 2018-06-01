// PLAYER SYNC SCRIPT
// DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING

// ns_send_player(id)
// Send a command to sync player status
if (!ns_is_in_game()) exit

var _id, _x, _y, spr, xs, ys, h, v, buffer;
_id = argument0
_x = _id.x
_y = round(_id.y)
spr = _id.spr
h = _id.h + 1
v = round(_id.vspeed * 100)

// data buffer:
//  1 byte | 1 byte |   4 bit   |  4 bit | 1 byte | 2 byte | 2 byte | 4 bit |  2 bit  |  2 bit  | 2 byte |
// command | gameId | playerIdx | object |  room  |   x    |    y   |  spr  | reverse |    h    |   v    |

// room: <= 255, playerIdx <= 15, object <= 15

// UDP_OBJECT_PLAYER is defined in Resources -> Define Constants
if (global.__debug_verbose_mode) {
    debug('sending packet:', 'room', room, 'xy', _id.x, _id.y, 'sp: ' + string(_id.v) + ',' + string(_id.vspeed))
}

buffer = ns_send_udp_begin(UDP_OBJECT_PLAYER)
buffer_write_int16(buffer, _x)
buffer_write_int16(buffer, _y)
buffer_write_int8(buffer, (spr << 4) + (global.reverse << 2) + h)
buffer_write_int16(buffer, v)
ns_send_udp_end(buffer)


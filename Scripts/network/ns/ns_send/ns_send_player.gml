// PLAYER SYNC SCRIPT
// DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING

// ns_send_player(id)
// Send a command to sync player status
if (!ns_is_in_game()) exit

var _room, _id, _x, _y, spr, xs, ys, h, v;
_room = room
_id = argument0
_x = _id.x
_y = round(_id.y)
spr = _id.spr
h = _id.h + 1
v = round(_id.vspeed * 100)

var CMD_TYPE_SYNC;
CMD_TYPE_SYNC = 1

// data buffer:
//  1 byte | 1 byte |   4 bit   |  4 bit | 1 byte | 2 byte | 2 byte | 4 bit |  2 bit  |  2 bit  | 2 byte |
// command | gameId | playerIdx | object |  room  |   x    |    y   |  spr  | reverse |    h    |   v    |

// room: <= 255, playerIdx <= 15, object <= 15

clearbuffer()
writebyte(CMD_TYPE_SYNC)
writebyte(ns_get_game_id())
// for player, object = 0
writebyte(ns_get_player_index() << 4)
writebyte(_room)
writeshort(_x)
writeshort(_y)
writebyte((spr << 4) + (global.reverse << 2) + h)
writeshort(v)

sendmessage(global.udpSockId, global.__ip, global.__udp_port)
clearbuffer()


// ns_recv_event_save_sync(fromName, id, room, x, y, image_xscale)

var fromName, data, _room, _x, _y, xs;
fromName = argument0
data = argument1

_id = json_pick(data, 'id')
_room = json_pick(data, 'room')
_x = json_pick(data, 'x')
_y = json_pick(data, 'y')
xs = json_pick(data, 'xs')

with (_id) {
    event_user(15)
}

if (global.__save_id == -1) {
    global.__save_id = _id
    global.__save_room = _room
    global.__save_x = _x
    global.__save_y = _y
    global.__save_xs = xs
    global.__player_auto_save = true
}


// ns_recv_instance(fromName, objectId, syncData)

var fromName, _id, data, obj, objName, size, i, cur;
fromName = argument0
_id = argument1
data = argument2

if (!instance_exists(_id) && !global.production_mode) {
    show_error(
        'Trying to sync an unexisting instance, id: ' +
            string(_id) +
            '. Was the instance created dynamically, or was it already destroyed? ' +
            '(dynamically means that you did not place the instance in room, but creates it from `instance_create`). ' +
            'Current sync data: ' +
            ds_map_log(data),
        0
    )
}

obj = _id.object_index

size = ds_map_size(data)
cur = ds_map_find_first(data)
for (i = 0; i < size; i += 1) {
    with (_id) {
        variable_local_set(cur, json_pick(data, cur))
    }
}

_id.fromName = fromName
with (_id) {
    event_user(15)
}


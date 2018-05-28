// ns_recv_instance(fromName, objectId, syncData)

var fromName, _id, data, obj, objName, size, i, cur;
fromName = argument0
_id = argument1
data = argument2

obj = _id.object_index

size = ds_map_size(data)
cur = ds_map_find_first(data)
for (i = 0; i < size; i += 1) {
    with (_id) {
        variable_local_set(cur, json_pick(data, cur))
    }
}
with (_id) {
    event_user(15)
}


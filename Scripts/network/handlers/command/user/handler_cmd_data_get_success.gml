// handler for get data success. Callback is user defined 12

var _data, _id, data, size, cur;
_data = argument0
_id = json_pick(_data, 'id') + 100000
data = json_pick(_data, 'data')
size = ds_map_size(data)
cur = ds_map_find_first(data)

for (i = 0; i < size; i += 1) {
    with (_id) {
        variable_local_set(_ns_decode(cur), json_pick(data, cur))
    }
    cur = ds_map_find_next(data, cur)
}

with (_id) {
    success = true
    event_user(EVENT_GET_DATA)
}

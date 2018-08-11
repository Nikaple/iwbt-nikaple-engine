// handler for get all data success. Callback is user defined 12

var _data, _id, allUserData, userData, userCount, dataCount, i, j, cur;
_data = argument0
_id = json_pick(_data, 'id') + 100000
allUserData = json_pick(_data, 'data')
userCount = ds_list_size(allUserData)

for (i = 0; i < userCount; i += 1) {
    userData = ds_list_find_value(allUserData, i)
    dataCount = ds_map_size(userData)
    cur = ds_map_find_first(userData)
    for (j = 0; j < dataCount; j += 1) {
        ds_map_add(userData, _ns_decode(cur), json_pick(userData, cur))
        ds_map_delete(userData, cur)
        cur = ds_map_find_next(userData, cur)
    }
    with (_id) {
        data[i] = userData
    }
}

with (_id) {
    success = true
    size = userCount
    event_user(EVENT_GET_DATA)
}

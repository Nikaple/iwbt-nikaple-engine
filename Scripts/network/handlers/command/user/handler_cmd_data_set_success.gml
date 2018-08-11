// handler for set data success. Callback is user defined 11

var _data, _id;
_data = argument0
_id = json_pick(_data, 'id') + 100000

with (_id) {
    success = true
    data = json_pick(_data, 'data')
    event_user(EVENT_SET_DATA)
}

// handler for get data fail. Callback is user defined 12

var _data, _id;
_data = argument0
_id = json_pick(_data, 'id') + 100000

with (_id) {
    success = false
    msg = json_pick(_data, 'msg')
    event_user(EVENT_GET_DATA)
}

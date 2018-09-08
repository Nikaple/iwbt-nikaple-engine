// ns_recv_instance(fromName, objectId, syncData)

var fromName, _id, data, obj, objName, size, i, cur;
fromName = argument0
_id = argument1
data = argument2

if (!instance_exists(_id) && !global.enable_production_mode) {
    i18n_show_error(
        '试图同步一个不存在的实例，实例 id 为：' +
            string(_id) +
            '。请检查它是不是动态创建的，或者已经被摧毁了（动态创建即用 instance_create 创建，而不是直接摆放到房间中）' +
            '当前同步信息：' +
            ds_map_log(data) +
            '。',
        'Trying to sync an unexisting instance, id: ' +
            string(_id) +
            '. Was the instance created dynamically, or was it already destroyed? ' +
            '(dynamically means that you did not place the instance in room, but creates it from `instance_create`). ' +
            'Current sync data: ' +
            ds_map_log(data)
    )
}

obj = _id.object_index

size = ds_map_size(data)
cur = ds_map_find_first(data)
for (i = 0; i < size; i += 1) {
    with (_id) {
        variable_local_set(cur, json_pick(data, cur))
    }
    cur = ds_map_find_next(data, cur)
}

_id.fromName = fromName
with (_id) {
    event_user(EVENT_TCP)
}


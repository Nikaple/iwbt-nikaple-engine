/// cmd_add_list(cmdId, key, itemCount, ...items)

/// @param {DSMap} parentId     parent to append to
/// @param {String} key         The key of list in parent DSMap
/// @param {Number} itemCount   How many items to append to the list ?
/// @param {Any} items          items

var pid, key, list, i, itemCount;
pid = argument0
key = argument1
itemCount = argument2
list = ds_map_create()

// parent setting
ds_map_add(pid, key, list)
_cmd_mark_as_ds(pid, key)

// list setting
_cmd_mark_as_list(list)

error_item('cmd_add_list', itemCount)

for (i = 0; i < itemCount; i += 1) {
    ds_map_add(list, string(i), _ns_encode(argument[i + 3]))
}

return list


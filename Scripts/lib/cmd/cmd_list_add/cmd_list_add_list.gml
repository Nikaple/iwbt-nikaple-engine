/// cmd_list_add_list(listId, itemCount, ...items)

/// @param {DSMap} parentId     parent to append to
/// @param {Number} itemCount   How many items to append to the list ?
/// @param {Any} items          items

var pid, key, list, i, itemCount;
pid = argument0
itemCount = argument1

list = ds_map_create()
key = string(_cmd_list_max_index(pid) + 1)

// parent setting
ds_map_add(pid, key, list)
_cmd_mark_as_ds(pid, key)

// list setting
_cmd_mark_as_list(list)

error_item('cmd_list_add_list', itemCount)

for (i = 0; i < itemCount; i += 1) {
    ds_map_add(list, string(i), argument[i + 2])
}

return list


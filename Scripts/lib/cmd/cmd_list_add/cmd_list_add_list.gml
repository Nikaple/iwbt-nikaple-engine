/// cmd_list_add_list(listId, itemCount, ...items)
/// @param {DSMap} parentId     parent to append to
/// @param {Number} itemCount   How many items to append to the list ?
/// @param {Any} items          items

var pid, key, list, i, itemCount;
pid = argument0
itemCount = argument1

map = ds_map_create()
key = string(_cmd_list_max_index(pid) + 1)

// parent setting
ds_map_add(pid, key, map)
_cmd_mark_as_ds(pid, key)

// list setting
_cmd_mark_as_list(map)

if (itemCount) {
    if (!is_real(itemCount)) {
        show_error('Error in script `cmd_list_add_list`, argument[1]: itemCount should be a number', 0)
    }
}

for (i = 0; i < itemCount; i += 1) {
    ds_map_add(map, string(i), argument[i + 2])
}

return map


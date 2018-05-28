/// cmd_add_list(cmdId, key, itemCount, ...items)
/// @param {DSMap} parentId     parent to append to
/// @param {String} key         The key of list in parent DSMap
/// @param {Number} itemCount   How many items to append to the list ?
/// @param {Any} items          items

var pid, key, map, i, itemCount;
pid = argument0
key = argument1
itemCount = argument2
map = ds_map_create()

// parent setting
ds_map_add(pid, key, map)
_cmd_mark_as_ds(pid, key)

// list setting
_cmd_mark_as_list(map)

if (itemCount) {
    if (!is_real(itemCount)) {
        show_error('Error in script `cmd_add_list`, argument[2]: itemCount should be a number', 0)
    }
}

for (i = 0; i < itemCount; i += 1) {
    ds_map_add(map, string(i), argument[i + 3])
}

return map


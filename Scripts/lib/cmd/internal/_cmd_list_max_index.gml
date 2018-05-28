/// _cmd_list_max_index(list)

var list, i, size, max_, prefixLen, current;

list = argument0
size = ds_map_size(list)
current = ds_map_find_first(list)
max_ = 0
prefixLen = string_length(CMD_PREFIX)

for (i = 0; i < size; i += 1) {
    if (string_copy(current, 1, prefixLen) != CMD_PREFIX) {
        if (real(current) > max_) {
            max_ = real(current)
        }
    }
    current = ds_map_find_next(list, current)
}

return max_


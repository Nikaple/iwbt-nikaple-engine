// ns_get_other_player_index(name)

var name, size, i;
name = argument0

for (i = 0; i < size; i += 1) {
    if (ds_list_find_value(global.__player_list, i) == name) {
        return i + 1
    }
}


//load the icons using on the menu room

var f, list, i, pos, inst, j, data;
for (i = 1; i <= 3; i += 1) {
    if (file_exists(get_save_file(i))) {
        //open save data to read
        f = file_text_open_read(get_save_file(i))
        //create the save data list
        list = ds_list_create()
        pos = 0
        //read game data
        data = file_text_read_string(f)
        ds_list_read(list, dataDecrypt(data))
        //assigning variables
        menu_death[i] = ds_list_find_value(list, pos)
        pos += 1
        menu_time[i] = ds_list_find_value(list, pos)
        pos = 7
        menu_difficulty[i] = ds_list_find_value(list, pos)
        pos += 1
        menu_clear[i] = ds_list_find_value(list, pos)
        pos += 1
        for (j = 1; j <= global.boss_number; j += 1) {
            menu_boss[i, j] = ds_list_find_value(list, pos)
            pos += 1
        }
        for (j = 1; j <= global.item_number; j += 1) {
            menu_item[i, j] = ds_list_find_value(list, pos)
            pos += 1
        }
        //destroy the save list
        ds_list_destroy(list)
        //close save file
        file_text_close(f)
    }
}


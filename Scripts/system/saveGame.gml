{
    var f, list, i;
    //open save data
    f = file_text_open_write(
        global.saving_directory + 'SaveData' + string(global.savenum)
    )
    if (!f) exit;
    //create the save data list
    list = ds_list_create()
    //saving game data to the list
    ds_list_add(list, global.death)
    ds_list_add(list, global.timestep)
    ds_list_add(list, room)
    ds_list_add(list, global.reverse)
    ds_list_add(list, player.xprevious)
    ds_list_add(list, player.yprevious)
    ds_list_add(list, player.image_xscale)
    ds_list_add(list, global.difficulty)
    ds_list_add(list, global.clear)
    for (i = 1; i <= global.boss_number; i += 1) {
        ds_list_add(list, global.boss[i])
    }
    for (i = 1; i <= global.item_number; i += 1) {
        ds_list_add(list, global.item[i])
    }
    //for more saving data, add your code here

    //write the encrypted string to save file
    file_text_write_string(f, dataEncrypt(ds_list_write(list)))
    //destroy the list
    ds_list_destroy(list)
    //close save data
    file_text_close(f) // clear global save
    if (global.__save_id == id) {
        debug('clearing global save')
        global.__save_id = -1
        global.__save_room = -1
        global.__save_x = -1
        global.__save_y = -1
        global.__save_xs = 0
    }
}


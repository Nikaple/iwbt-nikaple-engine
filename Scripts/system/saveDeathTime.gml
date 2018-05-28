{
    var f, list, obj;
    //open save data
    f = file_text_open_read(
        global.saving_directory + 'SaveData' + string(global.savenum)
    )
    // prevent error
    if (!f) exit;
    
    //create the save data list
    list = ds_list_create()
    //saving game data to the list
    ds_list_read(list, dataDecrypt(file_text_read_string(f)))
    ds_list_replace(list, 0, global.death)
    ds_list_replace(list, 1, global.timestep)
    file_text_close(f)
    //write the encrypted string to save file
    f = file_text_open_write(
        global.saving_directory + 'SaveData' + string(global.savenum)
    )
    if (!f) exit;
    file_text_write_string(f, dataEncrypt(ds_list_write(list)))
    //destroy the list
    ds_list_destroy(list)
    //close save data
    file_text_close(f)
}


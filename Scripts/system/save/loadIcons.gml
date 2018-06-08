//load the icons using on the menu room

var buffer, i, j;
buffer = buffer_create()

for (i = 1; i <= 3; i += 1) {
    if (file_exists(getSaveFile(i))) {
        buffer_read_from_file(buffer, getSaveFile(i))
        if (global.enable_encryption) {
            buffer_rc4_crypt(buffer, global.key)
        }
        // read data and update global & player status
        menu_death[i] = buffer_read_int32(buffer)
        menu_time[i] = buffer_read_uint64(buffer)
        menu_difficulty[i] = buffer_read_int8(buffer)
        menu_clear[i] = buffer_read_int8(buffer)
        for (j = 1; j <= global.boss_number; j += 1) {
            menu_boss[i, j] = buffer_read_int8(buffer)
        }
        for (j = 1; j <= global.item_number; j += 1) {
            menu_item[i, j] = buffer_read_int8(buffer)
        }
        buffer_clear(buffer)
    }
}

buffer_destroy(buffer)

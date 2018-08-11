// Scripts for internationalization <- i18n

if (global.enable_internationalization) {
    fw_init()
    // MAKE SURE you check this if you're not using a SIMPLIFIED-CHINESE operating system !!
    i18n_set_encoding()
}

ini_open(global.option_file_name)
global.language = ini_read_real('Locale', 'language', global.default_language)
ini_write_real('Locale', 'language', global.language)
ini_close()

global.__i18n_map = ds_map_create()
global.__i18n_max_placeholders = 4

// init font
i18n_font_init()

// init i18n entries
i18n_init_button()
i18n_init_user()
i18n_init_lobby()
i18n_init_warp()
i18n_init_message()


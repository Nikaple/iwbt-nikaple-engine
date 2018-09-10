// Scripts for internationalization <- i18n

if (global.enable_internationalization) {
    if (gamemaker_version < 810) {
        fw_init()
        // MAKE SURE you check this if you're not using a SIMPLIFIED-CHINESE operating system !!
        i18n_set_encoding()
    } else {
        i18n_show_error(
            '多语言支持在 GM 8.1 中不可用。' +
                '如果需要多语言支持，请考虑使用 GM 8.0，' + 
                '在脚本 `setGlobals` 中，将 global.enable_internationalization 设置为 false 以修复此错误。',
            'Internalization module is not available in GameMaker 8.1. ' +
                'Please consider using GameMaker 8.0 if you need multi-language support. ' + 
                'To dismiss this message, set `global.enable_internationalization` to `false` in script `setGlobals`.'
        )
        global.enable_internationalization = false
        global.language = LANG_EN
        global.enable_builtin_drawing = true
    }
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


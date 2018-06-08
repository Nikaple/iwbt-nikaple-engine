// Scripts for internationalization <- i18n
if (global.enable_internationalization) {
    fw_init()
}

global.__i18n_map = ds_map_create()
global.__i18n_max_placeholders = 4

i18n_font_init()
i18n_init_buttons()
i18n_init_user()
i18n_init_lobby()
i18n_init_warp()


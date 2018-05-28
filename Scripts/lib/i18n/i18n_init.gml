// Scripts for internationalization <- i18n

global.__i18n_map = ds_map_create()

i18n_add("network_disconnect", "网络已断开，正在重新连接...", "Network disconnected. Reconnecting...")

i18n_init_buttons()
i18n_init_user()
i18n_init_lobby()
i18n_init_warp()


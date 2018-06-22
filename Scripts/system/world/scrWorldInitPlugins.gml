//check it so we don't have to load the music for the second time
if (!SS_IsHandleValid(BGM_Null)) {
    music_init()
}

// make ds_list/ds_map id start from 1, so that if(id) return true when first list is created
global.__FUCK_GAMEMAKER_LIST__ = ds_list_create()
global.__FUCK_GAMEMAKER_MAP__ = ds_map_create()

// initialize all plugins
controls_init()
audio_init()
cleanmem_init(0)
i18n_init()
_ns_init()
_fake_random_init()
if (global.enable_auto_tile) {
    _autotile_init()
}

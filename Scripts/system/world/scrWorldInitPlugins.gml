//check it so we don't have to load the music for the second time
if (!SS_IsHandleValid(BGM_Null)) {
    music_init()
}
controls_init()
audio_init()
cleanmem_init(0)
ns_init()
i18n_init()
focus_init()

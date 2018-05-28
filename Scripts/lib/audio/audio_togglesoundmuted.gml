///audio_togglesoundmuted()
//
//  toggle sound on/off

{
    global.audio_sound_muted = !global.audio_sound_muted;
    audio_update();
}

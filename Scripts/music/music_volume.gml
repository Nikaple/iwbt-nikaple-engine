var vol, music;
vol = argument0
music = set_default(argument1, curMusic)

if (vol > 5) {
    SS_SetSoundVol(music, 2000 + 80 * vol)
} else {
    SS_SetSoundVol(music, 480 * vol)
}

var trgNum, snd;
trgNum = argument0
snd = argument1

global.triggered = trgNum
if (snd != 0) {
    audio_playsound(snd)
}
with (syncable) {
    if (trg == global.triggered) {
        event_user(15)
    }
}

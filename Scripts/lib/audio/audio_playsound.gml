///audio_playsound(snd)
//
//  plays a sound using global sound volume, and avoiding win8 crashes
//
//      snd      the sound to play
//   volume      the sound volume, default can be configured   
//

var sound, sound_default_volume, volume;
sound = argument0
volume = clamp(set_default(argument1, 1), 0, 1)

//set the default volume of sound resources
switch (sound) {
    case sndBossHit:
        sound_default_volume = 0.75
        break
    case sndClick:
    case sndBlockChange:
        sound_default_volume = 0.85
        break
    case sndDeath:
    case sndSpikeTrap:
    case sndGlass:
    case sndBreak:
        sound_default_volume = 0.9
        break
    default:
        sound_default_volume = 1
}

if (!global.audio_sound_muted) {
    sound_volume(
        sound,
        sound_default_volume * (0.3 + 0.007 * global.audio_sound_volume) * power(volume, 0.3)
    )
    sound_stop(sound)
    sound_play(sound)
}


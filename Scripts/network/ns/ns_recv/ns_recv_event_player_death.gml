var fromName, fakePlayer;
fromName = argument0

with (objOnlinePlayers) {
    fakePlayer = variable_local_get(fromName)
    instance_create(fakePlayer.x, fakePlayer.y, bloodEmitter);
    audio_playsound(sndDeath);
    fakePlayer.dead = true
}

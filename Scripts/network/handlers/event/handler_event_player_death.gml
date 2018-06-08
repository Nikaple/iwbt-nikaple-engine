var fromName, fakePlayer, emitter;
fromName = argument0

with (objOnlinePlayers) {
    fakePlayer = variable_local_get(fromName)
    emitter = instance_create(fakePlayer.x, fakePlayer.y, bloodEmitter);
    emitter.name = fromName
    music_play(sndDeath);
    fakePlayer.dead = true
}

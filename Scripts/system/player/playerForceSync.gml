// playerForceSync(framesToSync, syncCycle)

var frames, cycle;

frames = set_default(argument0, 10)
cycle = set_default(argument1, 2)

player.forceSync = true
player.forceSyncFrames = frames
player.forceSyncCycle = cycle

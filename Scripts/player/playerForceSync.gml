// playerForceSync(framesToSync, syncCycle)

var frames, cycle;
frames = argument0
cycle = argument1

set_default(frames, 10)
set_default(cycle, 2)

player.forceSync = true
player.forceSyncFrames = frames
player.forceSyncCycle = cycle

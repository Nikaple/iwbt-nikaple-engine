// playerForceSync(framesToSync, syncCycle)

var frames, cycle;
frames = argument0
cycle = argument1

set_default(frames, 50)
set_default(cycle, global.minSyncCycle)

player.forceSync = true
player.forceSyncFrames = frames
player.forceSyncCycle = cycle

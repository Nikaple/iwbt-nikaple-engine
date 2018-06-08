if (
    leftPressed ||
    rightPressed ||
    jumpPressed ||
    leftReleased ||
    rightReleased ||
    jumpReleased
) {
    eventSync = true
    syncTimer = 0
}


// an option to force sync player
if (forceSync) {
    forceSyncTimer += 1
    forceSyncTimerAll += 1
    if (forceSyncTimer == forceSyncCycle) {
        eventSync = true
        forceSyncTimer = 0
    }
    if (forceSyncTimerAll == forceSyncFrames) {
        forceSyncTimer = 0
        forceSyncTimerAll = 0
        forceSync = false
    }
}

// when player is not moving, do not sync
if (x == xprevious && abs(y - yprevious) <= grav * 2) {
    idleTime += 1
    if (idleTime == 10) {
        idleTime = 0
        shouldSync = false
    }
} else {
    idleTime = 0
    shouldSync = true
}

syncThreshold = set_default(syncThreshold, global.max_sync_cycle)

timer = (timer + 1) mod syncThreshold

if ((shouldSync && timer == 0) || eventSync) {
    ns_sync_player(id)
    eventSync = false
}



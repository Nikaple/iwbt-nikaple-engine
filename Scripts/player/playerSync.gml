if (
    keyboard_check_pressed(global.jumpbutton) ||
    keyboard_check_pressed(global.leftbutton) ||
    keyboard_check_pressed(global.rightbutton) ||
    keyboard_check_released(global.jumpbutton) ||
    keyboard_check_released(global.leftbutton) ||
    keyboard_check_released(global.rightbutton)
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
if (x == xprevious && y == yprevious) {
    idleTime += 1
    if (idleTime == 10) {
        idleTime = 0
        shouldSync = false
    }
} else {
    idleTime = 0
    shouldSync = true
}

syncThreshold = set_default(syncThreshold, global.maxSyncCycle)

timer = (timer + 1) mod syncThreshold

if ((shouldSync && timer == 0) || eventSync) {
    ns_send_player(id)
    eventSync = false
}



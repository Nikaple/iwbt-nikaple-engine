// auto tile, used in objBlock Create Event

if (global.enable_auto_tile) {
    switch (room) {
        case rOnlineHub:
        case rSeamlessWarping2:
            autotile(2, bgGrass)
            break
        case rSeamlessWarping:
            autotile(2, bgCastle)
            break
        case rOnlineWarpWait:
            // tile depth = -10
            autotile(4, bgMario, 32, -10, 4)
            break
        case rOnlineWarpSync:
            autotile(4, bgMetal, 32)
            break
        case rOnlineTriggerAndButton:
            autotile(4, bgLine)
            break
        case rOnlineSpike:
        case rOnlineResetSync:
            autotile(8, bgVVVVVV_16)
            break
        case rOnlinePlatforms:
        case rOnlineBossSample:
            autotile(8, bgVVVVVV_32, 32)
            break
        //add code here
        default:
            break
    }
}


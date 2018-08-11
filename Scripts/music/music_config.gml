// play music in each room
if (isBossRoom()) {
    music_play(BGM_Null)
    exit
}
switch (room) {
    case rTitle:
    case rMenu:
    case rOptions:
    case rLobby:
    case rRoom:
    case rSelectStage:
        //indicates that BGM_Title should be played in the rooms above
        music_loop(BGM_Title)
        break
    case rHub:
    case rTraps:
    case rGimmick:
    case rOnlineHub:
    case rOnlineSpike:
    case rOnlinePlatforms:
    case rOnlineTriggerAndButton:
    case rOnlineHostGuestBlock:
    case rSeamlessWarping:
    case rSeamlessWarping2:
    case rOnlineWarpWait:
    case rOnlineWarpSync:
    case rOnlineSaveWait:
    case rOnlineSaveSync:
    case rOnlineResetWait:
    case rOnlineResetSync:
        music_loop(BGM_Rock)
        break
    //add your code here
    default:
        music_play(BGM_Null)
}

